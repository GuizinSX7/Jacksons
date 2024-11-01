import 'package:flutter/material.dart';

class Musico extends StatefulWidget {
  const Musico({super.key});

  @override
  State<Musico> createState() => _MusicoState();
}

class _MusicoState extends State<Musico> {
  @override
  Widget build(BuildContext context) {
    final screenWidth =
        MediaQuery.of(context).size.width; // Get the screen width

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
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Row(children: [
                  Stack(
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
                      Container(
                        width: screenWidth, // Set width to screen width
                        child: Image.asset(
                          'assets/corey_taylor.png',
                          fit: BoxFit
                              .cover, // Ensure the image covers the width while maintaining aspect ratio
                        ),
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
                  ),
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
                )),
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
                              fontSize: 20,
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
            )),
      ),
    );
  }
}
