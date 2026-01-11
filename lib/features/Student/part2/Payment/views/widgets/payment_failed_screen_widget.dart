import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_method_screen.dart';
import 'package:smart_canvas/features/Student/part2/ai/ai_chatbot/views/widgets/body_ai_widget.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';

class PaymentFailedScreenWidget extends StatelessWidget {
  const PaymentFailedScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidgetWithoutImage(
        title: 'Payment Failed',
        leading: SizedBox.shrink(),
      ),
      body: BodyAiWidget(
        image: 'assets/images/report2_icon.gif',
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
