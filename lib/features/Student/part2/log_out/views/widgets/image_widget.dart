import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  const ImageWidget({
    super.key,
    required this.image,
    this.height = 230,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/$image',
        height: height,
        width: width,
        fit: BoxFit.contain,
      ),
    );
  }
}
