import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  const CalculatorButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    // Use SizedBox to ensure the button fills available space
    return SizedBox.expand(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          elevation: 0,
          padding: EdgeInsets.zero, // Remove padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.orbitron(
            color: Colors.white,
            fontSize: 16, // Add appropriate font size
          ),
        ),
      ),
    );
  }
}
