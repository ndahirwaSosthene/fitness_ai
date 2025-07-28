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
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: null,
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text(
            "Fitness AI",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 3,
                  offset: Offset(3, 2),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Welcome to Fitness AI, this is a workout app that will help you to improve your shape overall. Thank you very much for joining us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 20, 20, 19),
                  fontSize: 14,
                ),
              ),
              Image.asset("assets/images/fit.png"),
            ],
          ),
        ),
      ),
    );
  }
}
