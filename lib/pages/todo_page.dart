import 'package:fitness_ai/components/todo_tile.dart';
import 'package:flutter/material.dart';

class Task {
  String name; // eg: "Meeting"
  String description; // eg: "Discuss project"

  Task({required this.name, this.description = 'No description'});
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Task> tasks = []; // List of Task containers
  TextEditingController _taskNameController = TextEditingController();
  TextEditingController _taskDescController = TextEditingController();

  void _showAddTaskDialog() async {
    Task? newTask = await showDialog<Task>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _taskNameController,
                decoration: InputDecoration(
                  hintText: 'Enter task name',
                  border: OutlineInputBorder(),
                ),
                autofocus: false,
              ),
              SizedBox(height: 10),
              TextField(
                controller: _taskDescController,
                decoration: InputDecoration(
                  hintText: 'Enter task description',
                  border: OutlineInputBorder(),
                ),
                autofocus: false,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                _taskNameController.clear();
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                String taskName = _taskNameController.text.trim();
                String taskDesc = _taskDescController.text.trim();

                if (taskName.isNotEmpty) {
                  // Instead of combining strings, create a Task container
                  Task newTask = Task(
                    name: taskName,
                    description: taskDesc.isNotEmpty
                        ? taskDesc
                        : 'No description',
                  );

                  _taskNameController.clear();
                  _taskDescController.clear();
                  Navigator.pop(
                    context,
                    newTask,
                  ); // Return Task instead of String
                } else {
                  Navigator.pop(context);
                }
              },
              child: Text('Add Task'),
            ),
          ],
        );
      },
    );

    if (newTask != null) {
      setState(() {
        tasks.add(newTask); // Add Task object to list
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ListView(
              children: [
                Row(
                  children: [
                    Title(
                      color: Colors.black,
                      child: Text(
                        'My ToDo List',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: _showAddTaskDialog,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(color: Colors.white),
                        maximumSize: Size(100, 50),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 5),
                          Text('Add Task'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),

                ListView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return TodoTile(
                      task: tasks[index].name, // Extract name from Task
                      description: tasks[index].description, // Extract description from Task
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
