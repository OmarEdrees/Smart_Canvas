import 'package:smart_canvas/features/Student/library/BottomNavBar/bottom_nav_bar.dart';
import 'package:smart_canvas/features/Student/library/my_books/view/screens/my_books_screen.dart';
import 'package:smart_canvas/features/auth/sign_in/view_models/cubit/sign_in_cubit.dart';
import 'package:smart_canvas/features/auth/sign_in/views/screens/sign_in_screen.dart';
import 'package:smart_canvas/features/auth/sign_up/view_models/cubit/sign_up_cubit.dart';
import 'package:smart_canvas/features/auth/sign_up/views/screens/sign_up_screen.dart';
import 'package:smart_canvas/features/Student/library/BottomNavBar/home/views/screens/home_screen.dart';
import 'package:smart_canvas/features/on_boarding/view_models/cubit/on_boarding_cubit.dart';
import 'package:smart_canvas/features/on_boarding/views/screens/on_boarding_screen.dart';
import 'package:smart_canvas/features/splash/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:smart_canvas/core/app_route/route_names.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
        RouteNames.splashScreen: (context) => const SplashScreen(),

        RouteNames.onBoardingScreen: (context) => BlocProvider(
          create: (context) => OnBoardingCubit(),
          child: const OnBoardingScreen(),
        ),
        RouteNames.signInScreen: (context) => BlocProvider(
          create: (context) => SignInCubit(),
          child: const SignInScreen(),
        ),
        RouteNames.signUpScreen: (context) => BlocProvider(
          create: (context) => SignUpCubit(),
          child: const SignUpScreen(),
        ),
        RouteNames.mainBottomNav: (context) => const MainBottomNav(),
        RouteNames.homeScreen: (context) => const HomeScreen(),
        //RouteNames.bookDetails: (context) => const BookDetailsScreen(),
        RouteNames.myBooksScreen: (context) => MyBooksScreen(),
      };
}
