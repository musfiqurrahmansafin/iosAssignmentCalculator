Here’s a structured README.md file for your SwiftUI calculator app:

markdown
 SwiftUI Calculator App

A simple calculator application built using SwiftUI. This app supports basic arithmetic operations, percentage calculation, sign toggling, and decimal inputs, with an intuitive user interface.



 Features
 Basic Operations: Addition, subtraction, multiplication, and division.
 Percentage Calculation: Convert a number to its percentage value.
 Sign Toggle: Switch between positive and negative numbers.
 Decimal Support: Input and calculate decimal numbers.
 Clear Functionality: Reset the calculator to its initial state.



 Screenshot

![WhatsApp Image 2024-11-21 at 00 36 58_7e51ed71](https://github.com/user-attachments/assets/4fe4a23a-1f03-44a6-a741-fbb5e1f2698f)
![WhatsApp Image 2024-11-21 at 00 36 57_12ea0d77](https://github.com/user-attachments/assets/6cbf4956-46aa-4862-b35f-e0ebcd48452b)
![WhatsApp Image 2024-11-21 at 00 37 01_3cdb7689](https://github.com/user-attachments/assets/c7c4fbd7-4d3e-46bf-9876-272e01e9332b)
![WhatsApp Image 2024-11-21 at 00 36 58_4fcfc14f](https://github.com/user-attachments/assets/db5c29a9-032f-4ff4-8b05-91ae5fa17ba6)



 How It Works

 Layout
 A display area at the top shows the current input (display) and the full expression (expression).
 A grid of buttons below the display area allows user interaction.

 Button Functions
| Button  | Description                                      |
|||
| C     | Clears the display and resets the calculator.   |
| ±     | Toggles the sign of the current number.          |
| %     | Converts the current number into a percentage.  |
| +  × ÷ | Sets the operation for the calculation.         |
| =     | Calculates and displays the result.             |
| .     | Adds a decimal point to the current number.      |
| 09   | Inputs digits to build numbers.                 |



 Code Highlights

 Main Logic
 State Management: 
   @State properties like display, expression, currentOperation, and isResultDisplayed manage the app's UI state.
 Expression Handling:
   NSExpression is used to evaluate mathematical expressions dynamically.
 Button Actions:
   The handleButtonPress function routes button inputs to appropriate handlers for operations, numbers, and special functions.

 Dynamic Styling
 Button Styling:
   Colors and sizes adapt dynamically based on button types (e.g., operators, digits).



 Installation

1. Clone this repository:
   bash
   git clone https://github.com/yourusername/swiftuicalculator.git
   
2. Open the project in Xcode:
   bash
   cd swiftuicalculator
   open CalculatorApp.xcodeproj
   
3. Run the app on the simulator or a connected iOS device.



 Usage

1. Launch the app on your iOS simulator or device.
2. Use the buttons to perform calculations.
3. Clear (C) resets the display and expression.



 Future Improvements
 Add support for advanced functions (e.g., square root, power).
 Implement error handling for invalid expressions (e.g., division by zero).
 Enhance the user interface with animations or themes.



 License
This project is licensed under the [MIT License](LICENSE).



 Credits
Designed and developed by Your Name.


Feel free to adjust the sections (like features, future improvements, or credits) to suit your preferences!
