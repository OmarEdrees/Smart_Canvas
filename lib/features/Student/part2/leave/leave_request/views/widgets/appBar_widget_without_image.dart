import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class AppBarWidgetWithoutImage extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final double fontSize;
  final Widget leading;

  const AppBarWidgetWithoutImage({
    super.key,
    required this.title,
    this.fontSize = 35,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      centerTitle: true,
      backgroundColor: AppColors.background,
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
