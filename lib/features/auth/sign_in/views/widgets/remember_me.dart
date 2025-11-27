import 'package:flutter/material.dart';
import 'package:smart_canvas/core/components/custom_text_button.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/core/utilies/styles/app_text_styles.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  const RememberMeAndForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: AppColors.kPrimaryColor)),
          activeColor: AppColors.kPrimaryColor,
          checkColor: AppColors.kPrimaryColor,
          onChanged: (value) {
            // context.read<SignInCubit>().changeRememberMe();
          },
        ),
        Text(
          "Remember Me",
          style: AppTextStyles.title14Black,
        ),
        const Spacer(),
        CustomTextButton(
          title: "Forgot Password ?",
          style: AppTextStyles.title14PrimaryColor,
        ),
      ],
    );
  }
}
