import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/ai/ai_chatbot/views/widgets/ai_chatbot_screen_widget.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';

class AiChatbotScreen extends StatelessWidget {
  const AiChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetWithoutImage(
        title: 'Log out',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: AiChatbotScreenWidget(),
    );
  }
}
