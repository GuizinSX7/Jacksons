import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/pages/Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: 
        Lottie.asset('assets/animation/Animation-1727374978983.json',
        ),
      ), 
      nextScreen: const Login(),
      duration: 2300,
      backgroundColor: MyColors.preto,
    );
  }
}