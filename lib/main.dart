import 'package:fitness_ai/pages/authentication_page.dart';
import 'package:fitness_ai/pages/gallery.dart';
import 'package:fitness_ai/pages/home_page.dart';
import 'package:fitness_ai/pages/splash_screen.dart';
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
      home: Gallery(),
    );
  }
}
