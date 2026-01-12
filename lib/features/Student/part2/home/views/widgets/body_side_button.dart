import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/duties/views/screens/duties_screen.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_success_screen.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_success_screen_widget.dart';
import 'package:smart_canvas/features/Student/part2/ai/ai_chatbot/views/screens/ai_chatbot_screen.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/screens/assignment_details_screen.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/side_button.dart';
import 'package:smart_canvas/features/Student/part2/profile/views/screens/profile_screen.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/screens/receive_assignment_screen.dart';
import 'package:smart_canvas/features/Student/part2/tasks/views/screens/tasks_screen.dart';

class BodySideButton extends StatelessWidget {
  const BodySideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: Row(
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
          SideButton(
            image: "assets/images/email_icon.png",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DutiesScreen()),
              );
            },
          ),
          SideButton(
            image: "assets/images/turn_off_icon.png",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentSuccessScreen()),
              );
            },
          ),
          SideButton(
            image: "assets/images/street_map_icon.png",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AssignmentDetailsScreen(),
                ),
              );
            },
          ),
          SideButton(
            image: "assets/images/whatsapp_icon.png",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReceiveAssignmentScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
