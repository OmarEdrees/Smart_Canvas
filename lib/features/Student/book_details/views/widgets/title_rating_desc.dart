import 'package:flutter/material.dart';

class TitleRatingDesc extends StatelessWidget {
  final double rating;
  final String title;
  final String description;

  const TitleRatingDesc({
    super.key,
    required this.rating,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        // Rating
        Row(
          children: [
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star_half, color: Colors.orange, size: 20),
            SizedBox(width: 8),
            Text("$rating", style: TextStyle(color: Colors.grey)),
          ],
        ),

        const SizedBox(height: 20),

        // Description
        Text(
          'Description',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(description, style: TextStyle(color: Colors.grey, height: 1.6)),
      ],
    );
  }
}
