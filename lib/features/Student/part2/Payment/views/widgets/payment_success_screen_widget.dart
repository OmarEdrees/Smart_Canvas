import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_failed_screen.dart';
import 'package:smart_canvas/features/Student/part2/ai_chatbot/views/widgets/body_ai_widget.dart';

class PaymentSuccessScreenWidget extends StatelessWidget {
  const PaymentSuccessScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        title: const Text(
          'Payment Success',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C0A3E),
          ),
        ),
        centerTitle: true,
      ),
      body: BodyAiWidget(
        image: 'assets/images/mark_done_icon.png',
        titleButton: 'Continue',
        colorButton: Colors.green,
        ontapButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentFailedScreen()),
          );
        },
      ),
    );
  }
}
