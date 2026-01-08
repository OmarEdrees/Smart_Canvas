import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 1.2,
      dashPattern: const [6, 4], // طول النقطة والمسافة
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      child: Container(
        height: 180,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Upload files",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),

              Text(
                "(Images - PDF - DOCX)",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
