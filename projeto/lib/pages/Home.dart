import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

  

}

class _HomeState extends State<Home> {

final List<Map<String, dynamic>> musicas = [
    {'image': 'assets/Ghostss.jfif', 'route': '/'},
    {'image': 'assets/SOAD.jfif', 'route': '/'},
    {'image': 'assets/Ghostss.jfif', 'route': '/'},
    {'image': 'assets/SOAD.jfif', 'route' : '/'},
    {'image': 'assets/Ghostss.jfif', 'route': '/'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        title: Appbar(),
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Text('Músicas mais tocadas em 2024'),
                Padding(
                      padding: const EdgeInsets.only(bottom: 20.0), // Espaço abaixo do carrossel
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0), // Espaçamento nas bordas do carrossel
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: musicas.map((item) {
                              return GestureDetector(
                                onTap: () {
                                  // Navega para a rota especificada ao tocar na imagem
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
                                      height: 119, // Largura fixa para as imagens
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
            Row(),
            Row()
          ],
        ),
      ),
    );
  }
}