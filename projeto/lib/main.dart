import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/pages/ContiCadastro.dart';
import 'package:firebase_core/firebase_core.dart'; 
import 'package:projeto/pages/Musico.dart';
import 'package:projeto/pages/Perfil.dart';
import 'package:projeto/pages/principal.dart';
import 'package:projeto/pages/splashscreen.dart';
import 'package:projeto/pages/Resultadopesquisa.dart';
import 'package:projeto/pages/Playlist.dart';
import 'pages/Podcasts.dart';
import 'pages/Musics.dart';
import 'pages/Home.dart';
import 'pages/MusicaSelecionada.dart';
import 'pages/Pesquisa.dart';
import 'pages/Album.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Garante que a ligação dos widgets do Flutter esteja inicializada antes de usar qualquer plugin
  await Firebase.initializeApp(); 
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
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(), 
        '/principal' : (context) => PrincipalPage(),
        '/Home': (context) => Home(), 
        '/Musics': (context) => Musics(), 
        '/Podcasts': (context) => Podcasts(), 
        '/MusicaSelecionada' : (context) => Musicaselecionada(musicaIndex: 6,),
        '/Pesquisa': (context) => Pesquisa(),
        '/Musico' : (context) => Musico(),
        '/Playlist' : (context) => Playlist(),
        '/Album': (context) => Album(),
        '/Perfil': (context) => Perfil(),
      }, 
    );
  }
}
