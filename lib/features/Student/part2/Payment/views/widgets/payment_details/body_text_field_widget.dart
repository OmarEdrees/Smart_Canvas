import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_details/text_field_widget.dart';

class BodyTextFieldWidget extends StatelessWidget {
  const BodyTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(title: 'cardholder name', hintText: 'Your Name'),
        SizedBox(height: 20),
        TextFieldWidget(title: 'card number ', hintText: 'Your card name'),
        SizedBox(height: 20),
        TextFieldWidget(
          title: 'expiration date',
          hintText: 'Your expiration date',
        ),
        SizedBox(height: 20),
        TextFieldWidget(title: 'CVC', hintText: 'CVC'),
      ],
    );
  }
}
