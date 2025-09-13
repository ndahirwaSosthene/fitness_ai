import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String imagePath;

  const ImageBox({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
      child: Image.asset(imagePath),
    );
  }
}
