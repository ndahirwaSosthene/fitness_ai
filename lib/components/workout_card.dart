// import 'package:fitness_ai/pages/program_details.dart';
import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback? onTap;
  final bool vertical; // New parameter

  const WorkoutCard({
    super.key,
    required this.imagePath,
    this.title = '',
    this.subtitle = '',
    this.height = 180,
    this.width = double.infinity,
    this.vertical = false, // Default to horizontal layout
    this.borderRadius = 20,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double actualHeight = vertical ? 320 : height;
    final double actualWidth = vertical ? 160 : width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: actualHeight,
        width: actualWidth,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Stack(
            children: [
              // Image layer with proper fitting
              Positioned.fill(
                child: Hero(
                  tag: 'workout-$imagePath',
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),

              // Gradient overlay for text visibility
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                      stops: const [0.6, 1.0],
                    ),
                  ),
                ),
              ),

              // Text content
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (subtitle.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          subtitle,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
