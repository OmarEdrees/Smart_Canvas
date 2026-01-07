import 'package:flutter/material.dart';

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
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Color(0xff0C0A3E),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
