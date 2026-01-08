import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/notifications/view/widgets/body_notification_widget.dart';

class NotificationsScreenWidget extends StatelessWidget {
  const NotificationsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                color: Color(0xff0C0A3E),
              ),
            ),
          ],
        ),
      ),
      body: BodyNotificationWidget(),
    );
  }
}
