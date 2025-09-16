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

  void _showAddTaskBottomSheet() async {
    Task? newTask = await showModalBottomSheet<Task>(
      context: context,
      isScrollControlled: true, // Important for keyboard
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(
              context,
            ).viewInsets.bottom, // Keyboard spacing
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add New Task',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                // Same TextFields
                TextField(
                  controller: _taskNameController,
                  decoration: InputDecoration(
                    hintText: 'Enter task name',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _taskDescController,
                  decoration: InputDecoration(
                    hintText: 'Enter task description',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Buttons in a row
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _taskNameController.clear();
                          _taskDescController.clear();
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 186, 60, 60),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
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
                        onPressed: () {
                          // Same logic as AlertDialog
                          String taskName = _taskNameController.text.trim();
                          String taskDesc = _taskDescController.text.trim();
                          if (taskName.isNotEmpty) {
                            Task newTask = Task(
                              name: taskName,
                              description: taskDesc.isNotEmpty
                                  ? taskDesc
                                  : 'No description',
                            );

                            _taskNameController.clear();
                            _taskDescController.clear();
                            Navigator.pop(context, newTask);
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        child: Text('Add Task'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );

    // Same result handling
    if (newTask != null) {
      setState(() {
        tasks.add(newTask);
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
                      onPressed: _showAddTaskBottomSheet,
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
                      description: tasks[index]
                          .description, // Extract description from Task
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
