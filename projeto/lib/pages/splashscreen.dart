import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projeto/Shared/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navegar após um atraso
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/Cadastro");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: Center(
        child: Lottie.asset(
          'assets/animation/Animation-1727374978983.json',
          width: 250
        ),
      ),
    );
  }
}
