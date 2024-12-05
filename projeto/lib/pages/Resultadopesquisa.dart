import 'package:flutter/material.dart';
import 'package:projeto/components/musicplayer.dart';


class Resultadopesquisa extends StatefulWidget {
  const Resultadopesquisa({super.key});

  @override
  State<Resultadopesquisa> createState() => _ResultadopesquisaState();
}

class _ResultadopesquisaState extends State<Resultadopesquisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 30),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Psychosocial',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 88, 88, 88),
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(
                            10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 88, 88, 88),
                          borderRadius:
                              BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Psychosocial',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                buildResultItem(
                    'Psychosocial', 'Música - SlipKnot', 'assets/psychosocial.png'),
                const SizedBox(height: 10),
                buildResultItem('Live at Download Festival', 'Música - Slipknot',
                    'assets/festivalslpiknot.png'),
                const SizedBox(height: 10),
                buildResultItem('Psychosocial - Live', 'Música - SlipKnot',
                    'assets/slipknotlive.png'),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Relacionadas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                buildResultItem(
                    'Duality', 'Música - SlipKnot', 'assets/duality.png'),
                const SizedBox(height: 10),
                buildResultItem(
                    'The Devil in I', 'Música - SlipKnot', 'assets/devil.png'),
              ],
            ),
            Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: MusicWidget(), )
          ],
        ),
      ),
    );
  }

  Widget buildResultItem(String title, String subtitle, String imagePath) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
