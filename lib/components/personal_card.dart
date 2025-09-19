import 'package:flutter/material.dart';

class PersonalCard extends StatelessWidget {
  final String userName;
  final String title;
  const PersonalCard({super.key, required this.userName, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(width: 2, color: DefaultSelectionStyle.defaultColor),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/g_pic_4.jpg'),
                  radius: 40,
                  foregroundColor: Colors.black,
                ),
                SizedBox(height: 50),
              ],
            ),

            SizedBox(width: 40),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 52, 51, 51),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                SizedBox(height: 10),

                Row(
                  spacing: 5,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 116, 78, 6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.phone,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text('07886523533', style: TextStyle(fontSize: 14)),
                  ],
                ),

                SizedBox(height: 5),
                Row(
                  spacing: 5,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 116, 78, 6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.email, size: 20, color: Colors.white),
                    ),
                    Text(
                      'ndahirwasosthene@gmail.com',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),

                SizedBox(height: 5),
                Row(
                  spacing: 5,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 116, 78, 6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.place, size: 20, color: Colors.white),
                    ),
                    Text('KG 1965 Ave', style: TextStyle(fontSize: 14)),
                  ],
                ),

                SizedBox(height: 5),
                Row(
                  spacing: 5,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 116, 78, 6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.link, size: 20, color: Colors.white),
                    ),
                    Text(
                      'www.ndahirwasosthene.com',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
