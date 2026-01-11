import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/body_screen_details.dart';

import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';

class PaymentDetailsScreenWidget extends StatelessWidget {
  const PaymentDetailsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarWidgetWithoutImage(
        title: 'Payment Details',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: BodyScreenDetails(),
    );
  }
}
