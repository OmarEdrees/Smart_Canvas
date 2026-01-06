import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/screens/payment_details_screen.dart';
import 'package:smart_canvas/features/Student/part2/Payment/views/widgets/payment_method/button_of_payment_method.dart';

class BodyButtonOfPaymentMethod extends StatelessWidget {
  const BodyButtonOfPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonOfPaymentMethod(
              icon: 'assets/images/atm_card_icon.png',
              title: 'Credit Card',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentDetailsScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 50),
            ButtonOfPaymentMethod(
              icon: 'assets/images/payment_method_icon.png',
              title: 'Cash on college',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
