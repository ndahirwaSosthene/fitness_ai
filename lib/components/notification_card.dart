import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 219, 219),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.amber, radius: 23),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Invite Freinds',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Earn rewards for every freind you bring!',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 95, 94, 94),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
