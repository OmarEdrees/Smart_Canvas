import 'package:flutter/material.dart';

class MessageSuccess extends StatelessWidget {
  const MessageSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      '''The application was submitted successfully.''',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  }
}
