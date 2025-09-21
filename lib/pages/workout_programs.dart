import 'package:fitness_ai/components/program_card.dart';
import 'package:flutter/material.dart';

class WorkoutPrograms extends StatelessWidget {
  const WorkoutPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout Programs(ecommerce)')),
      body: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return ProgramCard(
              productName: 'Arms development',
              productDescription:
                  'This is just soe workouts that will be helping you develop ',
              productPrice: '30 USD',
              productRating: '4.5',
            );
          },
        ),
      ),
    );
  }
}
