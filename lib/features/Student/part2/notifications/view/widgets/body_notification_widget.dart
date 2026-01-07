import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/notifications/lists/list_of_NotificationWidget.dart';
import 'package:smart_canvas/features/Student/part2/notifications/view/widgets/notification_widget.dart';

class BodyNotificationWidget extends StatelessWidget {
  const BodyNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: AppColors.greyBackground,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
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
    );
  }
}
