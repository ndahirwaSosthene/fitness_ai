import 'package:fitness_ai/components/workout_card.dart';
import 'package:fitness_ai/pages/calculator_page.dart';
import 'package:fitness_ai/pages/quotes_page.dart';
import 'package:fitness_ai/pages/workout_details_page.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Sample workout data
  final List<Map<String, String>> workouts = [
    {
      'image': 'assets/images/g_pic_1.jpg',
      'title': 'FULL BODY WORKOUT',
      'subtitle': '30 min • Intermediate',
    },
    {
      'image': 'assets/images/g_pic_2.jpg',
      'title': 'UPPER BODY FOCUS',
      'subtitle': '25 min • Beginner',
    },
    {
      'image': 'assets/images/g_pic_3.jpg',
      'title': 'CORE CHALLENGE',
      'subtitle': '20 min • Advanced',
    },
    {
      'image': 'assets/images/g_pic_4.jpg',
      'title': 'HIIT TRAINING',
      'subtitle': '35 min • All levels',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(radius: 5),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Hi, Sofia',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('Welcome Back!', style: TextStyle(fontSize: 17)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuotesPage()),
              );
            },
            icon: Icon(FluentIcons.comment_quote_16_filled),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 600,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7, // More vertical cards
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: workouts.length,
                itemBuilder: (BuildContext context, int index) {
                  final workout = workouts[index];
                  return WorkoutCard(
                    imagePath: workout['image']!,
                    title: workout['title']!,
                    subtitle: workout['subtitle']!,
                    vertical: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WorkoutDetailPage(
                            imagePath: workout['image']!,
                            title: workout['title']!,
                            subtitle: workout['subtitle']!,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
              child: Text(
                'Calculator',
                style: GoogleFonts.goldman(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
