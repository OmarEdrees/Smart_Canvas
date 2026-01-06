import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/payment_details_screen_widget.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return PaymentDetailsScreenWidget();
  }
}
