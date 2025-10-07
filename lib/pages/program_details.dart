import 'package:flutter/material.dart';

class ProgramDetails extends StatelessWidget {
  const ProgramDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePath = 'assets/images/g_pic_4.jpg';
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
        title: Text('Program :$workoutName'),
      ),
      body: Center(
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Hero(
                  tag: 'workout-$imagePath',
                  child: Image.asset('assets/images/g_pic_4.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
