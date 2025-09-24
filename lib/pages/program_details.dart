import 'package:flutter/material.dart';

class ProgramDetails extends StatelessWidget {
  const ProgramDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final String workoutName =
      ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.navigate_before),
        ),
        title: Text('Program details page'),
      ),
      body: Center(
        child: Text(workoutName),
      ),
    );
  }
}
