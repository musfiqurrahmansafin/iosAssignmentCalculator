import SwiftUI

struct ContentView: View {
    @State private var display: String = "0"
    @State private var expression: String = ""
    @State private var currentOperation: String? = nil
    @State private var isResultDisplayed = false

    let buttons = [
        ["C", "±", "%", "÷"],
        ["7", "8", "9", "×"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", "="]
    ]

    var body: some View {
        VStack(spacing: 12) {
            Spacer()

            Text(expression)
                .font(.system(size: 25, weight: .light, design: .monospaced))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
                .foregroundColor(.gray)

            Text(display)
                .font(.system(size: 50, weight: .bold, design: .monospaced))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
                .background(Color.black.opacity(0.8))
                .foregroundColor(.white)

            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 12) {
                    ForEach(row, id: \.self) { button in
                        Button(action: {
                            handleButtonPress(button)
                        }) {
                            Text(button)
                                .font(.system(size: 25, weight: .medium))
                                .frame(width: button == "0" ? 150 : 70, height: 70)
                                .background(getButtonColor(button))
                                .foregroundColor(.white)
                                .cornerRadius(35)
                        }
                    }
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all))
    }

    func handleButtonPress(_ button: String) {
        switch button {
        case "C":
            clear()
        case "±":
            toggleSign()
        case "%":
            applyPercentage()
        case "+", "-", "×", "÷":
            setOperation(button)
        case "=":
            calculateResult()
        case ".":
            addDecimal()
        default:
            handleNumberInput(button)
        }
    }

    func handleNumberInput(_ number: String) {
        if isResultDisplayed {
            display = number
            expression = number
            isResultDisplayed = false
        } else if display == "0" || (currentOperation != nil && expression.last == " ") {
            display = number
        } else {
            display += number
        }

        expression += number
    }

    func setOperation(_ operation: String) {
        if isResultDisplayed {
            isResultDisplayed = false
            expression = display + " "
        }

        if !expression.isEmpty, "+-×÷".contains(expression.last!) {
            expression.removeLast()
        }

        expression += " \(operation) "
        currentOperation = operation
    }

    func calculateResult() {
        guard !expression.isEmpty else { return }

        let sanitizedExpression = expression.replacingOccurrences(of: "×", with: "*")
                                             .replacingOccurrences(of: "÷", with: "/")

        let exp: NSExpression = NSExpression(format: sanitizedExpression)
        if let result = exp.expressionValue(with: nil, context: nil) as? Double {
            display = String(format: "%g", result)
            isResultDisplayed = true
        }
    }

    func clear() {
        display = "0"
        expression = ""
        currentOperation = nil
        isResultDisplayed = false
    }

    func addDecimal() {
        if !display.contains(".") {
            display += "."
            expression += "."
        }
    }

    func toggleSign() {
        if let current = Double(display) {
            let toggledValue = -current
            display = String(format: "%g", toggledValue)

            if isResultDisplayed {
                expression = display
            }
        }
    }

    func applyPercentage() {
        if let current = Double(display) {
            let percentageValue = current / 100
            display = String(format: "%g", percentageValue)

            if isResultDisplayed {
                expression = display
            }
        }
    }

    func getButtonColor(_ button: String) -> Color {
        switch button {
        case "C", "±", "%":
            return Color.orange
        case "+", "-", "×", "÷", "=":
            return Color.blue
        default:
            return Color.gray
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
