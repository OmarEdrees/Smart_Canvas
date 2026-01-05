import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/side_button.dart';

class BodySideButton extends StatelessWidget {
  const BodySideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 300,
      child: Column(
        children: [
          SideButton(image: "assets/images/ai_assistant_robot.png"),
          SideButton(image: "assets/images/email_icon.png"),
          SideButton(image: "assets/images/turn_off_icon.png"),
          SideButton(image: "assets/images/street_map_icon.png"),
          SideButton(image: "assets/images/whatsapp_icon.png"),
        ],
      ),
    );
  }
}
