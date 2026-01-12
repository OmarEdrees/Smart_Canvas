import 'package:flutter/material.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/features/Student/part2/profile/views/widgets/body_profile_field.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          width: double.infinity,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: AppColors.greyBackground,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 215,
          top: 58,
          child: Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110),
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage('assets/images/man_icon.png'),
              ),
            ),
          ),
        ),

        BodyProfileField(),
      ],
    );
  }
}
