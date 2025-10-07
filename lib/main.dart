import 'package:fitness_ai/pages/home_page.dart';
import 'package:fitness_ai/pages/program_details.dart';
import 'package:fitness_ai/pages/settings_page.dart';
import 'package:fitness_ai/pages/workout_programs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/workout programs': (context) => WorkoutPrograms(),
        '/program details': (context) => ProgramDetails(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
