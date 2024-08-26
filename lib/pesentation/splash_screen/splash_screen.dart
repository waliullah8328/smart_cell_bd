import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_cell_bd/pesentation/login/login_sceen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset("assets/lottie/ecommerce_logo.json"),
        nextScreen: const LoginScreen(),
      animationDuration: const Duration(seconds: 3),
      splashIconSize: 200,
    );
  }
}
