import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_success_screen.dart';
import 'package:smart_canvas/features/Student/part2/ai/chat_with_ai/views/screens/chat_with_ai_screen.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/body_custom_textFormField.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/message.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_verified/views/screens/leave_verified_screen.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/button_yes_or_no.dart';
import 'package:smart_canvas/features/Student/part2/notifications/view/screens/notifications_screen.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: AppColors.greyBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Message(),
            BodyCustomTextFormField(),
            const SizedBox(height: 35),
            ButtonYesOrNo(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LeaveVerifiedScreen(),
                  ),
                );
              },
              title: 'Submit',
            ),
            const SizedBox(height: 15),
            ButtonYesOrNo(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsScreen(),
                  ),
                );
              },
              title: 'Follow request',
            ),
          ],
        ),
      ),
    );
  }
}
