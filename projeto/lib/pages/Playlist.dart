import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
              const SizedBox(height: 40), // Increased space to lower the arrow
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(Icons.arrow_back, color: Colors.white, size: 30), // Adjusted size
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space after the arrow

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250, // Increased width
                    height: 35, // Height remains the same
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.15),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.search, color: Colors.white70, size: 20), // Magnifying glass icon
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 3), // Adjust vertical padding
                              border: InputBorder.none,
                              hintText: 'Procurar nesta playlist',
                              hintStyle: TextStyle(color: Colors.white70), // Hint color
                            ),
                            style: const TextStyle(fontSize: 12), // Font size
                            textAlign: TextAlign.left, // Align text to the left
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      print('Classificar button pressed');
                    },
                    child: Container(
                      width: 70, // Reduced width
                      height: 28, // Reduced height
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(217, 217, 217, 0.15),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Classificar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12, // Font size
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
                        width: 200, // Increased size
                      ),
                      const SizedBox(height: 15), // Reduced space
                      const Text(
                        'Nome da Playlist',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 26, // Font size
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 15), // Reduced space
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/download button.png',
                              width: 28, // Reduced size
                            ),
                            const SizedBox(width: 8), // Reduced space
                            Icon(
                              Icons.person_add,
                              size: 28, // Reduced size
                              color: Color.fromRGBO(60, 57, 57, 1),
                            ),
                            const SizedBox(width: 8), // Reduced space
                            Icon(
                              Icons.more_vert,
                              size: 28, // Reduced size
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            const SizedBox(width: 8), // Reduced space
                            Image.asset(
                              'assets/Vector.png',
                              width: 28, // Reduced size
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Center container for aligning the songs
                      Center(
                        child: Column(
                          children: [
                            // Psychosocial row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/slipknot_image.jpg',
                                  width: 70, // Reduced size
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Psychosocial",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18, // Reduced font size
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "Música",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14, // Reduced font size
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          size: 8, // Reduced size
                                          color: Color.fromRGBO(143, 137, 137, 0.30),
                                        ),
                                        const Text(
                                          "Slipknot",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14, // Reduced font size
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5), // Space between songs

                            // Aerials row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/aerials.png',
                                  width: 70, // Reduced size
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Aerials",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18, // Reduced font size
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "Música",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14, // Reduced font size
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          size: 8, // Reduced size
                                          color: Color.fromRGBO(143, 137, 137, 0.30),
                                        ),
                                        const Text(
                                          "System of a Down",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14, // Reduced font size
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(height: 5), // Space between songs

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/devil_ini.png',
                                  width: 70, // Reduced size
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "The Devil In I",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18, // Reduced font size
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "Música",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14, // Reduced font size
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          size: 8, // Reduced size
                                          color: Color.fromRGBO(143, 137, 137, 0.30),
                                        ),
                                        const Text(
                                          "Slipknot",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14, // Reduced font size
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
    ));
  }
}
