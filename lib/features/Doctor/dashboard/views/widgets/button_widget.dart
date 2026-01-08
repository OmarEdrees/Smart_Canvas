import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/event/screens/events_screen.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/side_button.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SideButton(
            image: "assets/images/ai_assistant_robot.png",
            ontap: () {},
          ),
          SideButton(
            image: "assets/images/email_icon.png",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventsScreen()),
              );
            },
          ),
          SideButton(image: "assets/images/turn_off_icon.png", ontap: () {}),
          SideButton(image: "assets/images/street_map_icon.png", ontap: () {}),
          SideButton(image: "assets/images/whatsapp_icon.png", ontap: () {}),
        ],
      ),
    );
  }
}
