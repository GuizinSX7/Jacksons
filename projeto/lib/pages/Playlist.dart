import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF000000), // #000 59.6%
              Color(0xFFAD3A3A), // #AD3A3A 100%
            ],
            stops: [0.6, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 256,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.15),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        border: InputBorder.none,
                        hintText: 'Nova Playlist',
                      ),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      print('Classificar button pressed');
                    },
                    child: Container(
                      width: 83,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(217, 217, 217, 0.15),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Classificar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/playlist.png',
                        width: 200,
                      ),
                      const SizedBox(height: 20),

                      const Text(
                        'Nome da Playlist',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/download button.png',
                              width: 30,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'assets/Vector.png',
                              width: 30,
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              Icons.more_vert,
                              size: 30,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              Icons.person_add,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Center container for aligning the songs
                      Center(
                        child: Column(
                          children: [
                            // Psychosocial row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/slipknot_image.jpg',
                                  width: 80,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Psychosocial",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    const Row(
                                      children: [
                                        Text(
                                          "Música",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          size: 10,
                                          color: Color.fromRGBO(143, 137, 137, 0.30),
                                        ),
                                        Text(
                                          "Slipknot",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(height: 20), // Space between songs

                            // Aerials row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/aerials.png',
                                  width: 80,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Aerials",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    const Row(
                                      children: [
                                        Text(
                                          "Música",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          size: 10,
                                          color: Color.fromRGBO(143, 137, 137, 0.30),
                                        ),
                                        Text(
                                          "System of a Down",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
