import 'package:fitness_ai/components/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              'Recent Activity',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Dashboard()
          ],
        ),
      ),
    );
  }
}
