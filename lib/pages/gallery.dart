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
              SizedBox(
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
                                color: const Color.fromARGB(255, 154, 180, 222),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: ImageBox(
                                  imagePath: 'assets/images/g_pic_1.jpg',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 154, 180, 222),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: ImageBox(
                                  imagePath: 'assets/images/g_pic_1.jpg',
                                ),
                              ),
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
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    // Large image (right)
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
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
                                color: const Color.fromARGB(255, 154, 180, 222),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: ImageBox(
                                  imagePath: 'assets/images/g_pic_2.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    // similar size image 
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 180, 222),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: ImageBox(
                            imagePath: 'assets/images/g_pic_1.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    // Similar size images
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 154, 180, 222),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: ImageBox(
                                  imagePath: 'assets/images/g_pic_1.jpg',
                                ),
                              ),
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
