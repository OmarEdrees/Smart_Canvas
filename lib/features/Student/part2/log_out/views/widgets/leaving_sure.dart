import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class leavingSure extends StatelessWidget {
  const leavingSure({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '''You're leaving ..
Are you sure?''',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.blueDark,
      ),
    );
  }
}
