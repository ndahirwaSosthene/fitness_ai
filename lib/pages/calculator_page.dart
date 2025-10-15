import 'package:fitness_ai/components/button_function.dart';
import 'package:fitness_ai/components/calculator_button.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
// import 'package:fitness_ai/models/button_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Map<String, Function> functions = {};
  int? num = 0;

  String displayValue = '0'; // Store as String for better display control
  int currentNumber = 0; // The actual numeric value being built

  void _handleNumberPress(int digit) {
    setState(() {
      if (displayValue == '0') {
        // Replace initial zero with first digit
        displayValue = digit.toString();
        currentNumber = digit;
      } else {
        // Combine digits using your algorithm
        currentNumber = (currentNumber * 10) + digit;
        // Format the number with commas
        displayValue = NumberFormat('#,###').format(currentNumber);
      }
    });
  }

  void _handleClear() {
    setState(() {
      displayValue = '0';
      currentNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    FluentIcons.arrow_left_12_regular,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Basic Calculator',
                  style: GoogleFonts.goldman(
                    color: const Color.fromARGB(255, 221, 218, 218),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            // display panel
            child: Container(
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: const Color.fromARGB(221, 31, 31, 31),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    displayValue,
                    style: GoogleFonts.firaCode(
                      fontSize: 40,
                      color: Colors.lightGreenAccent,
                      // color: Colors.white, // The base color of the text
                      // shadows: <Shadow>[
                      //   // Add multiple shadows for the glowing effect
                      //   Shadow(
                      //     offset: Offset(
                      //       0.0,
                      //       0.0,
                      //     ), // No offset for a centered glow
                      //     blurRadius: 10.0,
                      //     color: Colors.blueAccent, // The glow color
                      //   ),
                      //   Shadow(
                      //     offset: Offset(0.0, 0.0),
                      //     blurRadius: 20.0,
                      //     color: Colors.blueAccent,
                      //   ),
                      //   Shadow(
                      //     offset: Offset(0.0, 0.0),
                      //     blurRadius: 30.0,
                      //     color: Colors.blueAccent,
                      //   ),
                      //   // You can add more shadows with increasing blurRadius for a stronger glow
                      // ],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2,
                ),
                itemCount: buttons.length,
                itemBuilder: (context, int index) {
                  // Define your button labels
                  final button = buttons[index];
                  button.onTap = () {
                    setState(() {
                      num = button.value;
                    });
                  };
                  return CalculatorButton(
                    label: button.label,
                    onTap: () {
                      // Handle different button types
                      if (button.value != null &&
                          button.value! >= 0 &&
                          button.value! <= 9) {
                        _handleNumberPress(button.value!);
                      } else if (button.label == 'C') {
                        _handleClear();
                      }
                      // Add more operators here later
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
