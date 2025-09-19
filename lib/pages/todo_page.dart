import 'package:fitness_ai/components/todo_tile.dart';
import 'package:flutter/material.dart';

// define a data model for the tasks
class Task {
  final String name; // eg: "Meeting" as task name
  final String description;
  final String id; // eg: "Discuss project" as task description
  Task({
    required this.name,
    this.description = 'No description',
    required this.id,
  });
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Task> tasks =
      []; // List of tasks(this includes their names and descriptions)
  final TextEditingController _taskNameController = TextEditingController();
  final TextEditingController _taskDescController = TextEditingController();

  void deleteTask(String taskId) {
    setState(() {
      tasks.removeWhere((task) => task.id == taskId);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Task Deleted', style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.blueAccent,
        action: SnackBarAction(label: 'UNDO', onPressed: () {}),
      ),
    );
  }

  void _showAddTaskBottomSheet() async {
    Task? newTask = await showModalBottomSheet<Task>(
      context: context,
      isScrollControlled:
          true, // Important for keyboard i.e this prevents keyboard from covering input
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
                  // title
                  'Add New Goal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                // Same TextFields
                TextField(
                  controller: _taskNameController,
                  decoration: InputDecoration(
                    hintText: 'Type the Goal',
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
                    hintText: 'Enter goal description',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Action Buttons in a row
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        // cancel button
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
                        // add button
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
                              id: DateTime.now().millisecondsSinceEpoch
                                  .toString(),
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
                        child: Text('Add Goal'),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Personal Records',
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
                          Text('Add Goal'),
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
                      dismissibleKey: ValueKey(tasks[index].id),
                      onDismissed: () => deleteTask(tasks[index].id),
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
