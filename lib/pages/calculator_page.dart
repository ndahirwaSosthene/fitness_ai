import 'package:fitness_ai/components/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorPage extends StatelessWidget {
  final Map<String, Function> functions = {};
  CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    '1,244',
                    style: GoogleFonts.firaCode(
                      fontSize: 40,
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
                itemCount: 16,
                itemBuilder: (context, index) {
                  // Define your button labels
                  final buttons = [
                    'C',
                    'DEL',
                    '%',
                    '÷',
                    '7',
                    '8',
                    '9',
                    '×',
                    '4',
                    '5',
                    '6',
                    '-',
                    '1',
                    '2',
                    '3',
                    '+',
                  ];
                  return CalculatorButton(label: buttons[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
