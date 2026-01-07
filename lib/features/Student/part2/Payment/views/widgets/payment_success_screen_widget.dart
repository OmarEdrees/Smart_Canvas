import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_failed_screen.dart';
import 'package:smart_canvas/features/Student/part2/ai/ai_chatbot/views/widgets/body_ai_widget.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';

class PaymentSuccessScreenWidget extends StatelessWidget {
  const PaymentSuccessScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetWithoutImage(
        title: 'Payment Success',
        leading: SizedBox.shrink(),
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
