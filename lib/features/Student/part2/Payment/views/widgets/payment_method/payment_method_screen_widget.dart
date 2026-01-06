import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/body_button_of_payment_method.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/details.dart';

class PaymentMethodScreenWidget extends StatelessWidget {
  const PaymentMethodScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        children: [
          Details(details: 'select one of the payment method'),
          BodyButtonOfPaymentMethod(),
        ],
      ),
    );
  }
}
