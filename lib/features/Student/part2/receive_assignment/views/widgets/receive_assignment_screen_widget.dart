import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/body_receive_screen.dart';

class ReceiveAssignmentScreenWidget extends StatelessWidget {
  const ReceiveAssignmentScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/icon.png', height: 65, width: 65),
        backgroundColor: AppColors.greyBackground,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: BodyReceiveScreen(),
    );
  }
}
