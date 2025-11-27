import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_canvas/core/components/custom_text_form_field_with_title.dart';
import 'package:smart_canvas/core/utilies/sizes/sized_config.dart';
import 'package:smart_canvas/features/auth/sign_up/view_models/cubit/sign_up_cubit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignUpCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // User Name
        CustomTextFormFieldWithTitle(
          title: "User Name",
          hintText: "enter your user name",
          prefixIcon: CupertinoIcons.person,
          keyboardType: TextInputType.name,
          controller: cubit.userNameController,
        ),
        SizedBox(height: SizeConfig.height * 0.01),

        // Full Name
        CustomTextFormFieldWithTitle(
          title: "Full Name",
          hintText: "enter your full name",
          prefixIcon: CupertinoIcons.person,
          keyboardType: TextInputType.name,
          controller: cubit.fullNameController,
        ),
        SizedBox(height: SizeConfig.height * 0.01),

        // Email
        CustomTextFormFieldWithTitle(
          title: "Email",
          hintText: "enter your email",
          prefixIcon: CupertinoIcons.mail,
          keyboardType: TextInputType.emailAddress,
          controller: cubit.emailController,
        ),
        SizedBox(height: SizeConfig.height * 0.01),

        // Phone Number
        CustomTextFormFieldWithTitle(
          title: "Phone Number",
          hintText: "enter your phone number",
          prefixIcon: CupertinoIcons.phone,
          keyboardType: TextInputType.phone,
          controller: cubit.phoneController,
        ),
        SizedBox(height: SizeConfig.height * 0.01),

        // Password
        CustomTextFormFieldWithTitle(
          title: "Password",
          hintText: "enter your password",
          prefixIcon: CupertinoIcons.padlock,
          isPassword: true,
          keyboardType: TextInputType.visiblePassword,
          controller: cubit.passwordController,
        ),
        SizedBox(height: SizeConfig.height * 0.01),
      ],
    );
  }
}
