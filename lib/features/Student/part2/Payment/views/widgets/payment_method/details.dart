import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String details;
  const Details({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Text(
      details,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
