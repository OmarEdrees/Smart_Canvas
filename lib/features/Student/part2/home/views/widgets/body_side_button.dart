import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/ai_chatbot/views/screens/ai_chatbot_screen.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/side_button.dart';

class BodySideButton extends StatelessWidget {
  const BodySideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SideButton(
            image: "assets/images/ai_assistant_robot.png",
            ontap: () {
              print("Clicked!"); // تأكد من ظهورها في الـ Console
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AiChatbotScreen()),
              );
            },
          ),
          SideButton(image: "assets/images/email_icon.png", ontap: () {}),
          SideButton(image: "assets/images/turn_off_icon.png", ontap: () {}),
          SideButton(image: "assets/images/street_map_icon.png", ontap: () {}),
          SideButton(image: "assets/images/whatsapp_icon.png", ontap: () {}),
        ],
      ),
    );
  }
}
