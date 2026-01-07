import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/ai/ai_chatbot/views/widgets/body_ai_widget.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/screens/log_out_screen.dart';

class AiChatbotScreenWidget extends StatelessWidget {
  const AiChatbotScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyAiWidget(
      image: 'assets/images/ai_assistant_robot.png',
      titleButton: 'Get Started',
      colorButton: AppColors.blueDark,
      ontapButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogOutScreen()),
        );
      },
    );
  }
}
