import 'package:flutter/material.dart';

class InkwellExample extends StatefulWidget {
  const InkwellExample({super.key});

  @override
  State<InkwellExample> createState() => _InkwellExampleState();
}

class _InkwellExampleState extends State<InkwellExample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // Ensures InkWell has a Material ancestor
      color: Colors.transparent, // Important: Make the Material transparent
      child: InkWell(
        onTap: () {
          print('InkWell Tapped!');
        },
        splashColor: Colors.red,
        highlightColor: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Tap Me (InkWell)', style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
