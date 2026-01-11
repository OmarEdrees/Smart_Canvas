import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/leave/follow_leave/views/widgets/body_follow_screen.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/image_widget.dart';

class FollowLeaveScreenWidget extends StatelessWidget {
  const FollowLeaveScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidgetWithoutImage(
        title: 'Follow up on leave request',
        fontSize: 25,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          ImageWidget(image: 'leave_icon.png'),

          BodyFollowScreen(),
        ],
      ),
    );
  }
}
