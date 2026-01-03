import 'package:flutter/material.dart';

class TitleRatingDesc extends StatelessWidget {
  const TitleRatingDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Interaction of Color",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        // Rating
        Row(
          children: const [
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star, color: Colors.orange, size: 20),
            Icon(Icons.star_half, color: Colors.orange, size: 20),
            SizedBox(width: 8),
            Text("4.0/5", style: TextStyle(color: Colors.grey)),
          ],
        ),

        const SizedBox(height: 24),

        // Description
        const Text(
          "Description",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "Lorem ipsum dolor sit amet consectetur adipiscing elit. "
          "Aenean massa libero sit amet commodo ligula eget dolor.",
          style: TextStyle(color: Colors.grey, height: 1.6),
        ),
      ],
    );
  }
}
