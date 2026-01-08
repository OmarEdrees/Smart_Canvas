import 'package:flutter/material.dart';

class ButtonUploadImage extends StatelessWidget {
  const ButtonUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
        //height: 60,
        decoration: BoxDecoration(
          color: Color(0xff0E50B0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          'Select files +',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
