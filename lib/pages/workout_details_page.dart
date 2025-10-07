import 'package:flutter/material.dart';

class WorkoutDetailPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  
  const WorkoutDetailPage({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);
  
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
              title: Text(title),
              background: Hero(
                tag: 'workout-${imagePath}', // Same tag as in the card
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
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
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Sample workout details
                  ListTile(
                    leading: Icon(Icons.fitness_center),
                    title: Text('4 sets of exercises'),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_fire_department),
                    title: Text('Burns approximately 300 calories'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_backup_restore),
                    title: Text('30 seconds rest between sets'),
                  ),
                  
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Start workout functionality
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text('Start Workout'),
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