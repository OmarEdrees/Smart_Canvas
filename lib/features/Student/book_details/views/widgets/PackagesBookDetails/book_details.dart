import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class BookDetails extends StatelessWidget {
  final String title;
  final String description;
  const BookDetails({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Text(title, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
