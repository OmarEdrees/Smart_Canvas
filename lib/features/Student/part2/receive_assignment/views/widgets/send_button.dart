import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          // horizontal: 80,
          vertical: 15,
        ),
        //height: 60,
        decoration: BoxDecoration(
          color: AppColors.blueDark,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          textAlign: TextAlign.center,
          'Send now',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
