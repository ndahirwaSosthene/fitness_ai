import 'package:fitness_ai/components/todo_tile.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ListView(
              children: [
                Title(
                  color: Colors.black,
                  child: Text(
                    'My ToDo List',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                TodoTile(task: 'Meeting with Herbert'),
                TodoTile(task: 'SDL Class'),
                TodoTile(task: 'E-Lab Class'),
                TodoTile(task: 'General Sport'),
                TodoTile(task: 'Cancel Subscription'),
                TodoTile(task: 'Ginja'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
