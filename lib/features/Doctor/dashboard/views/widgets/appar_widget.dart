import 'package:flutter/material.dart';

class appBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const appBarWidget({super.key});

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
          padding: const EdgeInsets.only(right: 15, top: 25),
          child: Stack(
            children: [
              const Icon(Icons.notifications, color: Colors.white, size: 35),
              Positioned(
                right: 18,
                top: 0,
                child: CircleAvatar(radius: 6, backgroundColor: Colors.red),
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
