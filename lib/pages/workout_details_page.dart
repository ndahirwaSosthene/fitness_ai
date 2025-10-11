import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutDetailPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const WorkoutDetailPage({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Expandable app bar with hero image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                title,
                style: GoogleFonts.goldman(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              background: Hero(
                tag: 'workout-$imagePath', // Same tag as in the card
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ),

          // Workout details
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.goldman(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: GoogleFonts.goldman(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Sample workout details
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        FluentIcons.dumbbell_20_filled,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      '4 sets of exercises',
                      style: GoogleFonts.workSans(),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        FluentIcons.fire_16_filled,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Burns approximately 300 calories',
                      style: GoogleFonts.workSans(),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        FluentIcons.timer_16_filled,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      '30 seconds rest between sets',
                      style: GoogleFonts.workSans(),
                    ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Start workout functionality
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Start Workout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
