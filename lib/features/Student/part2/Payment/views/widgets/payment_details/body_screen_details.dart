import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/body_text_field_widget.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/button_confirm_payment.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/checkBox_save_card.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/details.dart';

class BodyScreenDetails extends StatelessWidget {
  const BodyScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Details(details: 'enter your credit card details'),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: AppColors.greyBackground,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BodyTextFieldWidget(),
                SizedBox(height: 20),
                CheckBoxSaveCard(),
                SizedBox(height: 20),
                ButtonConfirmPayment(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
