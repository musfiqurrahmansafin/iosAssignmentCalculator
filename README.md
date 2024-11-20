# **SwiftUI Calculator App** 

A **simple calculator application** built using **SwiftUI**. This app supports:  
- Basic arithmetic operations  
- Percentage calculations  
- Sign toggling  
- Decimal inputs  

Designed with an **intuitive user interface** for ease of use!

---

## **✨ Features**

- 🧮 **Basic Operations**: Addition (`+`), subtraction (`-`), multiplication (`×`), and division (`÷`).
- 📊 **Percentage Calculation**: Convert a number to its percentage value (`%`).
- 🔄 **Sign Toggle**: Switch between positive and negative numbers (`±`).
- 📍 **Decimal Support**: Input and calculate decimal numbers.
- 🧹 **Clear Functionality**: Reset the calculator to its initial state (`C`).

---

## **📸 Screenshots**

Here are some visuals of the app in action:

![add](https://github.com/user-attachments/assets/cd98f835-c522-496a-86a2-598b47f73298)
![sub](https://github.com/user-attachments/assets/c5998513-c3be-492c-ae31-fde4ef56f65c)
![mul](https://github.com/user-attachments/assets/c072ce6d-2ef9-43c0-9fe2-3a3bc149d9a5)
![div](https://github.com/user-attachments/assets/ccb344f3-eb06-4822-8b43-bac1844d9d47)




## **💡 How It Works**

### **🔤 Layout**
- A **display area** at the top shows:  
  - Current input: `display`  
  - Full expression: `expression`
- A **grid of buttons** below the display area allows user interaction.

### **🔘 Button Functions**
| **Button**  | **Description**                               |
|-------------|-----------------------------------------------|
| `C`         | Clears the display and resets the calculator. |
| `±`         | Toggles the sign of the current number.        |
| `%`         | Converts the current number into a percentage.|
| `+ - × ÷`   | Sets the operation for the calculation.       |
| `=`         | Calculates and displays the result.           |
| `.`         | Adds a decimal point to the current number.   |
| `0-9`       | Inputs digits to build numbers.              |

---

## **🔧 Code Highlights**

### **🧠 Main Logic**
- **State Management**:  
  State properties like `@State` are used to manage UI components (`display`, `expression`, `currentOperation`, and `isResultDisplayed`).

- **Expression Handling**:  
  `NSExpression` is used to evaluate mathematical expressions dynamically.

- **Button Actions**:  
  The `handleButtonPress` function routes button inputs to appropriate handlers for operations, numbers, and special functions.

### **🎨 Dynamic Styling**
- Button colors and sizes dynamically adapt based on their purpose:  
  - Orange for utility buttons (`C`, `±`, `%`)  
  - Blue for operations (`+`, `-`, `×`, `÷`, `=`)  
  - Gray for numeric buttons (`0-9`, `.`).

---

## **🚀 Installation**

Follow these steps to install and run the app:

1. Clone this repository:
   git clone https://github.com/musfiqurrahmansafin/iosAssignmentCalculator.git
   

2. Open the project in Xcode:
   cd iosAssignmentCalculator
   open iosAssignmentCalculator.xcodeproj


3. Run the app on the iOS simulator or a connected iOS device.

---

## **📖 Usage**

1. Launch the app on your iOS simulator or device.
2. Use the calculator buttons to perform your desired operations.
3. Press `C` to reset the display and expression.

---

## **🚀 Future Improvements**

- ✨ Add support for advanced functions (e.g., square root, exponentiation).
- 🛠️ Implement error handling for invalid expressions (e.g., division by zero).
- 🎨 Enhance the user interface with animations, themes, or sound effects.

---

## **📜 License**

This project is licensed under the [MIT License](LICENSE).

---

## **🙌 Credits**

Designed and developed by **Md Musfiqur Rahman**.  
Feel free to reach out for suggestions or contributions!
