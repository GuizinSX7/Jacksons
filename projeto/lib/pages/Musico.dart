// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto/components/musicplayer.dart';


class Musico extends StatefulWidget {
  const Musico({super.key});

  @override
  State<Musico> createState() => _MusicoState();
}

class _MusicoState extends State<Musico> {
  @override
  Widget build(BuildContext context) {
    final screenWidth =
        MediaQuery.of(context).size.width; 

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,  // Start from top
                  end: Alignment.bottomCenter,  // End at the bottom (180 degrees)
                  colors: [
                    Color(0xFF9C2C2C), // Lighter red shade
                    Color(0xFFAD3A3A), // Red
                    Color(0xFF7A2C2C), // Darker red shade
                    Color(0xFF000000), // Black
                  ],
                  stops: [
                    0.0, // Start at the top with red
                    0.2, // Lighter red around 25%
                    0.3,  // Darker red around 50%
                    0.6,  // End with black at the bottom
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Row(children: [
                      Stack(
                        children: [
                          const SizedBox(height: 40), // Increased space to lower the arrow
                          Container(
                            width: screenWidth, // Set width to screen width
                            child: Image.asset(
                              'assets/corey_taylor.png',
                              fit: BoxFit.cover, 
                            ),
                          ),
                          Container(
                            width: screenWidth,
                            height: 210, // Adjust the height as needed
                            color: Colors.black.withOpacity(0.4), // 40% opacity
                          ),
                          Positioned(
                            bottom: 100, // Adjust this value as needed
                            left: 16, // Adjust this value as needed
                            child:GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/Home');
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30, // Adjusted size
                              ),
                            )
          
                          ),
                          Positioned(
                            bottom: 16, // Adjust this value as needed
                            left: 16, // Adjust this value as needed
                            child: Text(
                              'Corey Taylor',
                              style: TextStyle(
                                color: Colors.white, // Text color
                                fontSize: 30, // Text size
                              ),
                            ),
                          ),
                        ],
                      )
          
                    ]),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/download button.png',
                              width: 28, // Reduced size
                            ),
                            const SizedBox(width: 8), // Reduced space
                            Icon(
                              Icons.person_add,
                              size: 28, // Reduced size
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            const SizedBox(width: 8), // Reduced space
                            Icon(
                              Icons.more_vert,
                              size: 28, // Reduced size
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            const SizedBox(width: 8), // Reduced space
                            Image.asset(
                              'assets/Vector (1).png',
                              width: 28, // Reduced size
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Row(
                          children: [
                            const SizedBox(height: 30), // Reduced space
          
                            Text(
                              "Popular",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/duality_vol3.jpg',
                                  width: 70, // Reduced size
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Duality",
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
          
                            const SizedBox(height: 5),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                  'assets/people=shit.jpg',
                                  width: 70, // Reduced size
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "People = Shit",
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                  'assets/psychosocial.png',
                                  width: 70, // Reduced size
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Snuff",
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                                            color:
                                                Color.fromRGBO(143, 137, 137, 0.30),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: MusicWidget(), )
        ],
      ),
    );
  }
}
