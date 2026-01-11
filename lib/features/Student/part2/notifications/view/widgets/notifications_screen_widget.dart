import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/notifications/view/widgets/body_notification_widget.dart';

class NotificationsScreenWidget extends StatelessWidget {
  const NotificationsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        backgroundColor: AppColors.background,
        title: Row(
          children: [
            Image.asset(
              'assets/images/notifications_icon.png',
              height: 40,
              width: 40,
            ),
            SizedBox(width: 10),
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: BodyNotificationWidget(),
    );
  }
}
