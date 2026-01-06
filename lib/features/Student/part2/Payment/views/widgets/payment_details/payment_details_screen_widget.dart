import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/body_text_field_widget.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/button_confirm_payment.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/checkBox_save_card.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/details.dart';

class PaymentDetailsScreenWidget extends StatelessWidget {
  const PaymentDetailsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Details',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C0A3E),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Details(details: 'enter your credit card details'),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                color: Color(0xffD9D9D9),
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
      ),
    );
  }
}
