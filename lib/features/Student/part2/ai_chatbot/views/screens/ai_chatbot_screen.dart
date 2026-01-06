import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_success_screen.dart';
import 'package:smart_canvas/features/Student/part2/ai_chatbot/views/widgets/body_ai_widget.dart';

class AiChatbotScreen extends StatelessWidget {
  const AiChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Chatbot',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C0A3E),
          ),
        ),
        centerTitle: true,
      ),
      body: BodyAiWidget(
        image: 'assets/images/ai_assistant_robot.png',
        titleButton: 'Get Started',
        colorButton: AppColors.blueDark,
        ontapButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentSuccessScreen()),
          );
        },
      ),
    );
  }
}
