import 'package:flutter/material.dart';

class SmallerWorkoutCard extends StatelessWidget {
  const SmallerWorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 50,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            // background widget
            Positioned.fill(
              child: Image.asset(
                'assets/images/g_pic_2.jpg',
                fit: BoxFit.cover,
              ),
            ),

            // overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withAlpha(1)],
                    stops: [0.6, 1.0],
                  ),
                ),
              ),
            ),

            // text + button
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: Column(children: [Text('Hello'), Text('World')]),
            ),
          ],
        ),
      ),
    );
  }
}
