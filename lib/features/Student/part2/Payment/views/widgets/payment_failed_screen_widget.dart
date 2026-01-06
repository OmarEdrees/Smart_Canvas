import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_method_screen.dart';
import 'package:smart_canvas/features/Student/part2/ai_chatbot/views/widgets/body_ai_widget.dart';

class PaymentFailedScreenWidget extends StatelessWidget {
  const PaymentFailedScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        title: const Text(
          'Payment Failed',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C0A3E),
          ),
        ),
        centerTitle: true,
      ),
      body: BodyAiWidget(
        image: 'assets/images/report_icon.png',
        titleButton: 'Try Again',
        colorButton: Colors.red,
        ontapButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentMethodScreen()),
          );
        },
      ),
    );
  }
}
