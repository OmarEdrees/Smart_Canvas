import 'package:flutter/material.dart';

class StatusRow extends StatelessWidget {
  final String text;
  final Color color;

  const StatusRow({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          CircleAvatar(radius: 10, backgroundColor: color),
        ],
      ),
    );
  }
}
