import 'package:flutter/material.dart';

class HomeWorkoutCard extends StatelessWidget {
  const HomeWorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        height: 120,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 203, 199, 199),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 15,
                      ),
                      SizedBox(width: 3,),
                      Text("Steps")
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 15,
                      ),
                      SizedBox(width: 3,),
                      Text("Sleep")
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 15,
                      ),
                      SizedBox(width: 3,),
                      Text("Diet  ")
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
              Spacer(
                flex: 3,
              ),
              Column(
                children: [
                  SizedBox(height: 7,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 221, 137, 131),
                          borderRadius: BorderRadius.circular(70)
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 160, 82, 76),
                          borderRadius: BorderRadius.circular(70)
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 197, 48, 37),
                          borderRadius: BorderRadius.circular(70)
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 203, 199, 199),
                          borderRadius: BorderRadius.circular(75)
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
