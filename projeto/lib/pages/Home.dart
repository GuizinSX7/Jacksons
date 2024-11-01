import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> musicas = [
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'MusicaGhost'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'MusicaSOAD'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'MusicaGhost'},
    {'image': 'assets/SOAD.jfif', 'route': '/MusicaSelecionada', 'artista': 'SOAD', 'nome': 'MusicaSOAD'},
    {'image': 'assets/Ghostss.jfif', 'route': '/MusicaSelecionada', 'artista': 'Ghost', 'nome': 'MusicaGhost'},
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
        padding: const EdgeInsets.symmetric(vertical: 16.0), // Espaçamento vertical
        child: Column(
          children: [
            Text(
              'Músicas mais tocadas em 2024',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "ABeeZee",
              ),
            ),
            SizedBox(height: 16), // Espaço abaixo do título
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0), // Espaçamento nas bordas do carrossel
              height: 119, // Altura fixa para o carrossel
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: musicas.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context, item['route'], (route) => false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0), // Espaçamento entre imagens
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item['image'], // Usa o caminho da imagem
                            fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço disponível
                            width: 127,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            // Se você precisar de mais conteúdo, adicione aqui
          ],
        ),
      ),
    );
  }
}
