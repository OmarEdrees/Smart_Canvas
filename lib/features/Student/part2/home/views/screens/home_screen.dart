import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/appBar.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/body_grid_items.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/body_side_button.dart';
import 'package:smart_canvas/features/Student/part2/home/views/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const Header(image: 'assets/images/student_person.png'),
          const Expanded(
            child:
                BodyGridItems(), // تأكد أن بداخله SingleChildScrollView أو GridView
          ),
        ],
      ),
    );
  }
}
