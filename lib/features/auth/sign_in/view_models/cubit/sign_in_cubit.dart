import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:smart_canvas/core/app_route/route_names.dart';
import 'package:smart_canvas/core/cache/cache_helper.dart';
import 'package:smart_canvas/core/network/supabase/database/get_data_with_spacific_id.dart';
import 'package:smart_canvas/features/auth/sign_in/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:smart_canvas/app/my_app.dart';
import 'package:smart_canvas/core/di/dependancy_injection.dart';
import 'package:smart_canvas/core/network/supabase/auth/sign_in_with_google.dart';
import 'package:smart_canvas/core/network/supabase/auth/sign_in_with_password.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'sign_in_state.dart';

enum UserRole { customer, technician }

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final supabase = getIt<SupabaseClient>();
  UserModel? userModel;
  // Sign in Method
  signIn() async {
    if (formKey.currentState!.validate()) {
      try {
        emit(SignInLoading());
        FocusScope.of(navigatorKey.currentContext!).unfocus();
        await signInWithPassword(
            email: emailController.text, password: passwordController.text);
        await getUserData();
        emit(SignInSuccess(route: getScreenRoute()));
      } on Exception catch (e) {
        emit(SignInFailure(message: e.toString()));
      }
    }
  }

  Future<void> getUserData() async {
    try {
      final userData = await getDataWithSpacificId(
        tableName: "users",
        primaryKey: "id",
        id: supabase.auth.currentUser!.id,
      );
      if (userData.isEmpty) {
        throw Exception("User not found");
      }
      userModel = UserModel.fromJson(userData.first);
      // await getIt<CacheHelper>().saveUserModel(userModel!);
    } catch (e) {
      log(e.toString());
      throw Exception("Failed to fetch user data or user not found");
    }
  }

  // get screen route
  String getScreenRoute() {
    if (userModel!.role == UserRole.customer.name) {
      return RouteNames.signInScreen;
    } else {
      return RouteNames.signInScreen;
    }
  }

  // sign in with google
  signInWithGoogle() async {
    try {
      emit(SignInWithGoogleLoading());
      await getIt<GoogleAuthService>().signWithGoogle();
      emit(SignInWithGoogleSuccess(
        route: getScreenRoute(),
      ));
    } on Exception catch (e) {
      emit(SignInWithGoogleFailure(message: e.toString()));
    }
  }

  // Dispose Controllers
  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
