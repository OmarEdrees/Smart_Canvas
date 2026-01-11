import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class appBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const appBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SizedBox.shrink(),
      backgroundColor: AppColors.background,
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
        Row(
          children: [
            Image.asset('assets/images/icon.png', height: 50, width: 50),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Stack(
                children: [
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 40,
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: CircleAvatar(radius: 4, backgroundColor: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
