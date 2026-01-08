import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/notifications/view/screens/notifications_screen.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SizedBox.shrink(),
      backgroundColor: Color(0xff0C0A3E),
      centerTitle: true,
      title: const Text(
        "Home",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications, size: 30, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const NotificationsScreen();
                      },
                    ),
                  );
                },
              ),
              Positioned(
                right: 8,
                top: 13,
                child: CircleAvatar(radius: 4, backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
