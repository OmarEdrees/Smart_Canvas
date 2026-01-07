import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/leave/follow_leave/views/widgets/status_request.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/message.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/button_yes_or_no.dart';

class BodyFollowScreen extends StatelessWidget {
  const BodyFollowScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Message()),
            const SizedBox(height: 15),
            StatusRequest(),
            Spacer(),
            ButtonYesOrNo(ontap: () {}, title: 'Back'),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
