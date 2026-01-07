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

//     Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Payment Details',
//           style: TextStyle(
//             fontSize: 35,
//             fontWeight: FontWeight.bold,
//             color: Color(0xff0C0A3E),
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Details(details: 'enter your credit card details'),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.only(top: 100),
//               width: double.infinity,
//               alignment: Alignment.bottomCenter,
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//               decoration: const BoxDecoration(
//                 color: Color(0xffD9D9D9),
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   BodyTextFieldWidget(),
//                   SizedBox(height: 20),

//                   SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       width: double.infinity,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: AppColors.blueDark,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Confirm payment",
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BodyTextFieldWidget extends StatelessWidget {
//   const BodyTextFieldWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFieldWidget(title: 'cardholder name', hintText: 'Your Name'),
//         SizedBox(height: 20),
//         TextFieldWidget(title: 'card number ', hintText: 'Your card name'),
//         SizedBox(height: 20),
//         TextFieldWidget(
//           title: 'expiration date',
//           hintText: 'Your expiration date',
//         ),
//         SizedBox(height: 20),
//         TextFieldWidget(title: 'CVC', hintText: 'CVC'),
//       ],
//     );
//   }
// }

// class TextFieldWidget extends StatelessWidget {
//   final String title;
//   final String hintText;

//   const TextFieldWidget({
//     super.key,
//     required this.title,
//     required this.hintText,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,

//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             color: Colors.grey.shade700,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         TextFormField(
//           decoration: InputDecoration(
//             filled: true,
//             fillColor: Colors.white, // اختر اللون الذي يناسبك
//             hintText: hintText,
//             hintStyle: TextStyle(color: Colors.grey),
//             border: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CheckBoxSaveCard extends StatefulWidget {
//   const CheckBoxSaveCard({super.key});

//   @override
//   State<CheckBoxSaveCard> createState() => _CheckBoxSaveCardState();
// }

// class _CheckBoxSaveCardState extends State<CheckBoxSaveCard> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Transform.scale(
//           scale: 1.5, // تكبير الحجم قليلاً
//           child: Checkbox(
//             value: isChecked,
//             side: BorderSide(color: Colors.grey.shade700),
//             activeColor: AppColors.blueDark, // لون المربع عند التفعيل

//             onChanged: (value) {
//               setState(() {
//                 isChecked = value!; // 2. تحديث القيمة الحقيقية
//               });
//             },
//           ),
//         ),
//         Text(
//           'Save this card for payment',
//           style: TextStyle(
//             color: Colors.grey.shade700,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }
