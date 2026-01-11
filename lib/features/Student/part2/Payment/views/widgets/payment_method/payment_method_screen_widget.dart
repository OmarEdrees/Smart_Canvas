import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/body_button_of_payment_method.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/details.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';

class PaymentMethodScreenWidget extends StatelessWidget {
  const PaymentMethodScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidgetWithoutImage(
        title: 'Payment Failed',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Details(details: 'select one of the payment method'),
          BodyButtonOfPaymentMethod(),
        ],
      ),
    );
  }
}
