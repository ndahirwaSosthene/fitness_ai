import 'package:flutter/material.dart';


class TodoTile extends StatefulWidget {
  const TodoTile({
    super.key,
    required this.task,
    this.description = 'No description',
  });
  final String task;
  final String description;

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool isChecked = false;

  void onClick(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: Container(
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 236, 236),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              decoration: BoxDecoration(
                color: isChecked ? Colors.green : Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
            Checkbox(
              value: isChecked,
              fillColor: WidgetStateProperty.all(
                isChecked ? Colors.green : null
              ),
              onChanged: onClick,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 246,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.task,
                      style: TextStyle(
                        fontSize: 14,
                        color: isChecked
                            ? const Color.fromARGB(255, 168, 171, 172)
                            : null,
                        decoration: isChecked
                            ? TextDecoration.lineThrough
                            : null,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 157, 167, 171),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next)),
          ],
        ),
      ),
    );
  }
}
