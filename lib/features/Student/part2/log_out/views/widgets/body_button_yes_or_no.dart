import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/screens/leave_request_screen.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/button_yes_or_no.dart';

class BodyButtonYesOrNo extends StatelessWidget {
  const BodyButtonYesOrNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        decoration: BoxDecoration(
          color: AppColors.greyBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonYesOrNo(
              title: "Yes",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeaveRequestScreen()),
                );
              },
            ),
            SizedBox(height: 30),
            ButtonYesOrNo(title: "No", ontap: () {}),
          ],
        ),
      ),
    );
  }
}
