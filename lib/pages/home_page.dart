import 'package:fitness_ai/utils/home_workout_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Global Variables and functions
  String time = "08:54";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Fitness AI',
      //     style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Samsung Health",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              Text(
                "Last synched at $time",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Row(
                spacing: 10,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.sports_mma), Text("MMA")],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sports_basketball),
                        Text("Basketball"),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.sports_football), Text("Football")],
                    ),
                  ),
                ],
              ),
              HomeWorkoutCard()
            ],
          ),
        ),
      ),
    );
  }
}
