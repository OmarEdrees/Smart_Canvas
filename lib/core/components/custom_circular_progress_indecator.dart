import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularProgresIndecator extends StatelessWidget {
  const CustomCircularProgresIndecator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
  }
}