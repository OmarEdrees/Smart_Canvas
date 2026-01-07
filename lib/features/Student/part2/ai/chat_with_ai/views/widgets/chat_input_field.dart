import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                hintText: "you",
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.attach_file, color: Colors.grey.shade700),
          const SizedBox(width: 10),
          Icon(Icons.send, color: Colors.grey.shade700),
        ],
      ),
    );
  }
}
