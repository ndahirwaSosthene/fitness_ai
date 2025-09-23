import 'package:flutter/material.dart';

class ScalingExample extends StatefulWidget {
  const ScalingExample({super.key});

  @override
  State<ScalingExample> createState() => _ScalingExampleState();
}

class _ScalingExampleState extends State<ScalingExample> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (ScaleUpdateDetails details) {
        setState(() {
          _scale = details.scale;
        });
      },
      child: Transform.scale(
        scale: _scale,
        child: Image.asset('assets/images/guy.png'),
      ),
    );
  }
}
