import 'package:smart_canvas/core/app_route/route_names.dart';
import 'package:smart_canvas/core/utilies/extensions/app_extensions.dart';
import 'package:smart_canvas/features/splash/views/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNextScreen();
    super.initState();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementScreen(RouteNames.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}

