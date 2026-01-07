import 'package:flutter/material.dart';

class AiIcon extends StatelessWidget {
  const AiIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Image.asset('assets/images/ai_assistant_robot.png', height: 80),
          ],
        ),
      ),
    );
  }
}
