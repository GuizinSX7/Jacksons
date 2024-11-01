import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';
class Musics extends StatefulWidget {
  const Musics({super.key});

  @override
  State<Musics> createState() => _MusicsState();
}

class _MusicsState extends State<Musics> {
  @override

final List<Map<String, dynamic>> musicas = [
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'Cirice'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'Toxicity'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'Life Eternal'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'Aerials'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'He is'},
  ];

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Appbar(),
      ),
      
    );
  }
}