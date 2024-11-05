import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';
import 'package:projeto/Shared/style.dart';

class Musics extends StatefulWidget {
  const Musics({super.key});

  @override
  State<Musics> createState() => _MusicsState();
}

class _MusicsState extends State<Musics> {
  final List<Map<String, dynamic>> musicas = [
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'Cirice'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'Hypnotize'},
    {'image': 'assets/Devils_Guns.jpg', 'route': '/MusicaSelecionada', 'artista': 'guns&roses', 'nome': 'Life Eternal'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'Aerials'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'He is'},
  ];

  final List<Map<String, dynamic>> albuns = [
    {'image': 'assets/bitous.png', 'route': '/Album'},
    {'image': 'assets/Devils_Guns.jpg', 'route': '/Album'},
    {'image': 'assetes/engenharia_havaiana.jfif', 'route': '/Album'},
    {'image': 'assets/Miguel_jack_filho.jpg', 'route': '/Album'},
    {'image': 'assets/Roberto_Carlos.jpg', 'route': '/Album'},
    {'image': 'assets/bitous.png', 'route': '/Album'},
    {'image': 'assets/Devils_Guns.jpg', 'route': '/Album'},
    {'image': 'assetes/engenharia_havaiana.jfif', 'route': '/Album'},
    {'image': 'assets/Miguel_jack_filho.jpg', 'route': '/Album'},
    {'image': 'assets/Roberto_Carlos.jpg', 'route': '/Album'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Appbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título das músicas favoritas
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Suas músicas favoritas',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "ABeeZee",
                ),
              ),
            ),
            SizedBox(height: 13),
            _buildMusicCarousel(),
            SizedBox(height: 13),

            // "Para fãs De" com a imagem circular
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/SOAD.jfif',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Para fãs De',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: "ABeeZee",
                        ),
                      ),
                      Text(
                        'System of Down',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "ABeeZee",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 13),

            _buildMusicCarousel(),
            SizedBox(height: 13),

            // Título de "Artistas"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Artistas',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "ABeeZee",
                ),
              ),
            ),
            SizedBox(height: 13),

            // Carrossel de álbuns
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: albuns.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context, item['route'], (route) => false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item['image'],
                                fit: BoxFit.cover,
                                width: 86,
                                height: 97,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para construir o carrossel de músicas
  Widget _buildMusicCarousel() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: musicas.map((item) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, item['route'], (route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item['image'],
                        fit: BoxFit.cover,
                        width: 127,
                        height: 119,
                      ),
                    ),
                    SizedBox(height: 4), // Espaço entre a imagem e os textos
                    Text(
                      item['artista'],
                      style: TextStyle(
                        color: MyColors.roxo,
                        fontSize: 8.5,
                      ),
                    ),
                    Text(
                      item['nome'],
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
