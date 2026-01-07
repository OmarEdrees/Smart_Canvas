import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/ai/chat_with_ai/views/widgets/ai_icon.dart';
import 'package:smart_canvas/features/Student/part2/ai/chat_with_ai/views/widgets/ai_message_bubble.dart';
import 'package:smart_canvas/features/Student/part2/ai/chat_with_ai/views/widgets/chat_input_field.dart';

class ChatWithAiScreenWidget extends StatelessWidget {
  const ChatWithAiScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        children: [
          /// AI ICON
          AiIcon(),

          const SizedBox(height: 50),

          /// CHAT MESSAGES
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                AiMessageBubble(text: "Hey"),
                SizedBox(height: 15),
                AiMessageBubble(text: "How can i help you ?"),
                SizedBox(height: 85),

                /// INPUT FIELD
                const ChatInputField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
