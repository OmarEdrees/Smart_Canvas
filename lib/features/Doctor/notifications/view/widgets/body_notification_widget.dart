import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Doctor/notifications/lists/list_of_NotificationWidget.dart';
import 'package:smart_canvas/features/Doctor/notifications/view/widgets/notification_widget.dart';

class BodyNotificationWidget extends StatelessWidget {
  const BodyNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mark as read',
              style: TextStyle(
                fontSize: 30,
                color: AppColors.navyBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greyBackground,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: notification.length,
                    itemBuilder: (context, index) {
                      return NotificationWidget(
                        title: notification[index].title,
                        icon: notification[index].icon,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
