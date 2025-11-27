import 'package:custom_quick_alert/custom_quick_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_canvas/core/components/custom_circular_progress_indecator.dart';
import 'package:smart_canvas/core/utilies/assets/images/app_images.dart';
import 'package:smart_canvas/core/utilies/extensions/app_extensions.dart';
import 'package:smart_canvas/core/utilies/sizes/sized_config.dart';
import 'package:smart_canvas/features/auth/sign_in/view_models/cubit/sign_in_cubit.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/have_account_or_not.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/or_sign_with.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/remember_me.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/sign_in_form.dart';
import 'package:smart_canvas/features/auth/sign_in/views/widgets/social_sign_in.dart';
import 'package:smart_canvas/core/app_route/route_names.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  static const Color primary = Color(0xFF218ADD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true, // مهم جدًا عشان الكيبورد
      body: SafeArea(
        child: Stack(
          children: [
            // الخلفية الزرقاء المنحنية
            Container(
              height: SizeConfig.height * 0.40,
              decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),

            // اللوجو floating
            Positioned(
              top: SizeConfig.height * 0.08,
              left: 0,
              right: 0,
              
              child: Center(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 30,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    AppImages.logoWithoutBackgroundImage,
                    width: SizeConfig.width * 0.32,
                    height: SizeConfig.width * 0.32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // كل المحتوى داخل Scroll (الحل السحري)
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(
                top: SizeConfig.height * 0.3, // بدل الـ Align + margin
                bottom: MediaQuery.of(context).viewInsets.bottom + 20, // عشان الكيبورد
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.width * 0.08),
                padding: EdgeInsets.fromLTRB(
                  SizeConfig.width * 0.06,
                  SizeConfig.height * 0.06,
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
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Welcome Texts
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: primary,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Sign in to continue",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: SizeConfig.height * 0.04),

                    // الفورم + Listener
                    BlocListener<SignInCubit, SignInState>(
                      listener: (context, state) {
                        if (state is SignInSuccess) {
                          context.pushReplacementScreen(state.route);
                          CustomQuickAlert.success(
                            title: 'Welcome!',
                            message: 'Signed in successfully',
                          );
                        }
                        if (state is SignInFailure) {
                          CustomQuickAlert.error(
                            title: 'Error',
                            message: state.message,
                          );
                        }
                      },
                      child: const SignInForm(),
                    ),

                    const RememberMeAndForgotPassword(),
                    SizedBox(height: SizeConfig.height * 0.035),

                    // زر Sign In
                    BlocBuilder<SignInCubit, SignInState>(
                      buildWhen: (p, c) => c is SignInLoading,
                      builder: (context, state) {
                        return SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: state is SignInLoading
                                ? null
                                : () => context.read<SignInCubit>().signIn(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primary,
                              disabledBackgroundColor: primary.withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              elevation: 8,
                              shadowColor: primary.withOpacity(0.4),
                            ),
                            child: state is SignInLoading
                                ? const CustomCircularProgresIndecator()
                                : const Text(
                                    "Sign In",
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
                    const SocialSignIn(),

                    SizedBox(height: SizeConfig.height * 0.03),

                    HaveAccountOrNot(
                      title: "Don't have an account? ",
                      value: "Sign Up",
                      onPressed: () => context.pushScreen(RouteNames.signUpScreen),
                    ),

                    const SizedBox(height: 20), // مسافة من تحت
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}