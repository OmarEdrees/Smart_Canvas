import 'package:custom_quick_alert/custom_quick_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_canvas/core/components/custom_circular_progress_indecator.dart';
import 'package:smart_canvas/core/utilies/colors/app_colors.dart';
import 'package:smart_canvas/core/utilies/extensions/app_extensions.dart';
import 'package:smart_canvas/core/utilies/sizes/sized_config.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/have_account_or_not.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/or_sign_with.dart';
import 'package:smart_canvas/features/auth/sign_up/view_models/cubit/sign_up_cubit.dart';
import 'package:smart_canvas/features/auth/sign_up/views/widgets/pick_image.dart';
import 'package:smart_canvas/features/auth/sign_up/views/widgets/sign_up_form.dart';
import 'package:smart_canvas/features/auth/sign_up/views/widgets/social_sign_up.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  static const Color primary = Color(0xFF218ADD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // الخلفية الزرقاء المنحنية
            Container(
              height: SizeConfig.height * 0.38,
              decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),

            // كل المحتوى داخل السكرول (بما فيه الصورة)
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // مسافة من فوق عشان الصورة تطلع فوق المنحنى
                  SizedBox(height: SizeConfig.height * 0.050),

                  // صورة المستخدم (بتطلع فوق الكارت وداخل السكرول)
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 25,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const PickImage(), // حجمك الأصلي
                    ),
                  ),

                  SizedBox(height: SizeConfig.height * 0.040),

                  // الكارت الأبيض
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: SizeConfig.width * 0.08),
                    padding: EdgeInsets.fromLTRB(
                      SizeConfig.width * 0.06,
                      SizeConfig.height * 0.04, // قللتها من 0.10 لـ 0.04
                      SizeConfig.width * 0.06,
                      SizeConfig.height * 0.05,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(34),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          offset: const Offset(0, -12),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // العنوان
                        Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: primary,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Fill your details to get started",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: SizeConfig.height * 0.04),

                        // الفورم + BlocListener
                        BlocListener<SignUpCubit, SignUpState>(
                          listener: (context, state) {
                            if (state is SignUpSuccess || state is SignUpWithGoogleSuccess) {
                              context.popScreen();
                              CustomQuickAlert.success(
                                title: 'Welcome!',
                                message: 'Account created successfully!',
                              );
                            } else if (state is SignUpFailure) {
                              CustomQuickAlert.error(
                                title: 'Error',
                                message: state.errorMessage,
                              );
                            } else if (state is PickImageFailure) {
                              CustomQuickAlert.info(
                                title: 'Info',
                                message: state.errorMessage,
                              );
                            }
                          },
                          child: const SignUpForm(),
                        ),

                        SizedBox(height: SizeConfig.height * 0.035),

                        // زر Sign Up
                        BlocBuilder<SignUpCubit, SignUpState>(
                          buildWhen: (p, c) => c is SignUpLoading,
                          builder: (context, state) {
                            return SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: state is SignUpLoading
                                    ? null
                                    : () => context.read<SignUpCubit>().signUp(),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primary,
                                  disabledBackgroundColor: primary.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  elevation: 8,
                                  shadowColor: primary.withOpacity(0.4),
                                ),
                                child: state is SignUpLoading
                                    ? const CustomCircularProgresIndecator()
                                    : const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                            );
                          },
                        ),

                        const OrSignWith(),
                        const SocialSingUp(),

                        SizedBox(height: SizeConfig.height * 0.03),

                        HaveAccountOrNot(
                          title: "Already have an account? ",
                          value: "Sign In",
                          onPressed: () => context.popScreen(),
                        ),

                        SizedBox(height: SizeConfig.height * 0.03), // للـ safe area من تحت
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}