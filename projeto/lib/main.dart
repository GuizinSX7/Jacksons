import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/pages/Cadastro.dart';
import 'package:projeto/pages/Login.dart';
import 'package:projeto/pages/Musico.dart';
import 'package:projeto/pages/passwordreset.dart';
import 'package:projeto/pages/splashscreen.dart';
import 'package:projeto/pages/Playlist.dart';
import 'pages/Podcasts.dart';
import 'pages/Musics.dart';
import 'pages/Home.dart';
import 'pages/MusicaSelecionada.dart';
import 'pages/Pesquisa.dart';

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
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/Login' : (context) => LoginPage(),
        '/passwordreset' : (context) => resetpassword(),
        '/Cadastro' : (context) => Cadastro(),
        '/Home': (context) => Home(),
        '/Musics': (context) => Musics(),
        '/Podcasts': (context) => Podcasts(),
        '/MusicaSelecionada' : (context) => Musicaselecionada(),
<<<<<<< HEAD
        '/Pesquisa': (context) => Pesquisa(),
=======
        '/Musico' : (context) => Musico(),
        '/Playlist' : (context) => Playlist()
>>>>>>> 1bde95611c4338b56e448b08e94dd6dc1c1d2294
      }, 
    );
  }
}
