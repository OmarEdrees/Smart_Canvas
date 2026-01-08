import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/body_assignment_details.dart';
import 'package:smart_canvas/features/Student/part2/assignment_details/views/widgets/header_assignment_details.dart';

class AssignmentDetailsScreenWidget extends StatelessWidget {
  const AssignmentDetailsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.blueDark,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderAssignmentDetails(),
            SizedBox(height: 50),

            BodyAssignmentDetails(),
          ],
        ),
      ),
    );
  }
}
