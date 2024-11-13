import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/pages/Cadastro.dart';
import 'package:projeto/pages/Login.dart';
import 'package:projeto/pages/Perfil.dart';
import 'package:projeto/pages/Pesquisa.dart';
import 'package:projeto/pages/passwordreset.dart';
import 'package:projeto/pages/splashscreen.dart';
import 'package:projeto/pages/Resultadopesquisa.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: MyFonts.fontPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/Perfil' : (context) => Perfil(),
        '/passwordreset' : (context) => resetpassword(),
        '/Cadastro' : (context) => Cadastro()
      }, 
    );
  }
}
