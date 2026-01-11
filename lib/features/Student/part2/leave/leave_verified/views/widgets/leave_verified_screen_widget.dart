import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_verified/views/widgets/body_screen_verified.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/image_widget.dart';

class LeaveVerifiedScreenWidget extends StatelessWidget {
  const LeaveVerifiedScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidgetWithoutImage(
        title: 'Leave Request',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 60),
          ImageWidget(image: 'yes2_icon.gif', height: 350, width: 300),
          BodyScreenVerified(),
        ],
      ),
    );
  }
}
