import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/components/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> musicas = [
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'Cirice'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'Toxicity'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'Life Eternal'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'Aerials'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'He is'},
  ];

  final List<Map<String, dynamic>> artistas = [
    {'image': 'assets/corey_taylor.png', 'route': '/musico' }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        title: Appbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Text(
              'Músicas mais tocadas em 2024',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "ABeeZee",
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 13),
            _buildMusicCarousel(),
            SizedBox(height: 13),
            Text(
              'Tocadas recentemente',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "ABeeZee",
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 13),
            _buildMusicCarousel(),
            SizedBox(height: 13),
            Text(
              'Músicas mais tocadas em 2024',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "ABeeZee",
              ),
              textAlign: TextAlign.left,
            ),


            Container(
     margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: artistas.map((item) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, item['route'], (route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
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
  ),// Você pode usar a mesma lista ou criar outra
          ],
        ),
      ),
    );
  }

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
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
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


