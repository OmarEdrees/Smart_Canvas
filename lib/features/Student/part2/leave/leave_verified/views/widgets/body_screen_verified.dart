import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/leave/follow_leave/views/screens/follow_leave_screen.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_verified/views/widgets/message_success.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/button_yes_or_no.dart';

class BodyScreenVerified extends StatelessWidget {
  const BodyScreenVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          color: AppColors.greyBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MessageSuccess(),
            SizedBox(height: 80),
            ButtonYesOrNo(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FollowLeaveScreen()),
                );
              },
              title: 'Ok',
            ),
          ],
        ),
      ),
    );
  }
}
