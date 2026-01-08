import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/duties/views/widgets/status_row.dart';

class BodyStatusRow extends StatelessWidget {
  const BodyStatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.2),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          StatusRow(text: "Not delivered", color: Colors.red),
          SizedBox(height: 10),
          StatusRow(text: "Delivery is in progress", color: Colors.yellow),
          SizedBox(height: 10),
          StatusRow(text: "Delivered", color: Colors.green),
        ],
      ),
    );
  }
}
