import 'package:fitness_ai/components/image_box.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Text(
                "My Gallery",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Container(
                height: 200,
                child: Row(
                  children: [
                    // Small images (left)
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('Small 1')),
                            ),
                          ),
                          SizedBox(height: 4),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 30, 209, 233),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('Small 2')),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 3),
                    // Large image (right)
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 182, 30),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Large Image')),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 200,
                child: Row(
                  children: [
                    // Large image (right)
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 182, 30),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Large Image')),
                      ),
                    ),
                    SizedBox(width: 3),
                    // Small images (left)
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('Small 1')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Item")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 200,
                child: Row(
                  children: [
                    // Large image (right)
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 182, 30),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('1 Image')),
                      ),
                    ),
                    SizedBox(width: 3),
                    // Small images (left)
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('2 Image')),
                            ),
                          ),
                        ],
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
