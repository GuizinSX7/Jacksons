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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFAD3A3A),
              Color(0xFF000000),
            ],
            stops: [0.1, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding to the container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align items at the top
            children: [
              const SizedBox(height: 20), // Space between the top row and next elements

              Row(
                children: [
                  Container(
                    width: 256, // Width equivalent to 256px
                    height: 40, // Height equivalent to 30px
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.15), // Background rgba(217, 217, 217, 0.15)
                      borderRadius: BorderRadius.circular(5), // Border radius 5px
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), // Adjust padding
                        border: InputBorder.none, // No border inside the TextField
                        hintText: 'Nova Playlist',
                      ),
                      style: const TextStyle(fontSize: 14), // Font size inside text field
                    ),
                  ),
                  const SizedBox(width: 10), // Space between text field and button

                  GestureDetector(
                    onTap: () {
                      // Handle button tap
                      print('Classificar button pressed');
                    },
                    child: Container(
                      width: 83, // Width equivalent to 83px
                      height: 30, // Height equivalent to 30px
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(217, 217, 217, 0.15), 
                        borderRadius: BorderRadius.circular(5), // Border radius 5px
                      ),
                      child: Center(
                        child: Text(
                          'Classificar',
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 13, // Font size
                            fontWeight: FontWeight.w400, 
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space between the top row and next elements

              Expanded(
                child: SingleChildScrollView( // Allow scrolling for the rest of the content
                  child: Column(
                    children: [
                      // First image
                      Image.asset(
                        'assets/playlist.png',
                        width: 200, // Width of the first image
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

                      Row(
                        children: [
                          Image.asset(
                            'assets/download button.png',
                            width: 15,
                            height: 15,
                          ),
                          Image.asset(
                            'assets/Vector.png',
                            width: 15,
                            height: 15,
                          ),
                          Icon(
                            Icons.more_vert, 
                            size: 15,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.person_add,
                            size: 15,
                          ),
                        ],
                      ),
              const SizedBox(height: 20), // Space between the top row and next elements

                      // Row for image and text
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items in the row
                          children: [
                            Image.asset(
                              'assets/slipknot_image.jpg',
                              width: 100, // Set the desired width for the image
                            ),
                            const SizedBox(width: 10), // Space between image and text
                            Column(
                              children: [
                                const Text(
                                  "Psychosocial",
                                  style: TextStyle(
                                    color: Colors.white, // Adding style for better readability
                                    fontSize: 20, // Optional: Adjust font size as desired
                                  ),
                                ),
                                const SizedBox(height: 10), // Space between "Psychosocial" and "Música"
                                const Row(
                                  children: [
                                    Text(
                                      "Música",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                        fontSize: 16, // Font size
                                        fontWeight: FontWeight.w400, // Font weight
                                        height: 20 / 16, // Line height of 20px
                                      ),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                    ),
                                    Text(
                                      "Slipknot",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                        fontSize: 16, // Font size
                                        fontWeight: FontWeight.w400, // Font weight
                                        height: 20 / 16, // Line height of 20px
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                                    const SizedBox(height: 20), // Space between the top row and next elements

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items in the row
                          children: [
                            Image.asset(
                              'assets/slipknot_image.jpg',
                              width: 100, // Set the desired width for the image
                            ),
                            const SizedBox(width: 10), // Space between image and text
                            Column(
                              children: [
                                const Text(
                                  "Psychosocial",
                                  style: TextStyle(
                                    color: Colors.white, // Adding style for better readability
                                    fontSize: 20, // Optional: Adjust font size as desired
                                  ),
                                ),
                                const SizedBox(height: 10), // Space between "Psychosocial" and "Música"
                                const Row(
                                  children: [
                                    Text(
                                      "Música",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                        fontSize: 16, // Font size
                                        fontWeight: FontWeight.w400, // Font weight
                                        height: 20 / 16, // Line height of 20px
                                      ),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                    ),
                                    Text(
                                      "Slipknot",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                        fontSize: 16, // Font size
                                        fontWeight: FontWeight.w400, // Font weight
                                        height: 20 / 16, // Line height of 20px
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

              const SizedBox(height: 20), // Space between the top row and next elements

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center items in the row
                          children: [
                            Image.asset(
                              'assets/slipknot_image.jpg',
                              width: 100, // Set the desired width for the image
                            ),
                            const SizedBox(width: 10), // Space between image and text
                            Column(
                              children: [
                                const Text(
                                  "Psychosocial",
                                  style: TextStyle(
                                    color: Colors.white, // Adding style for better readability
                                    fontSize: 20, // Optional: Adjust font size as desired
                                  ),
                                ),
                                const SizedBox(height: 10), // Space between "Psychosocial" and "Música"
                                const Row(
                                  children: [
                                    Text(
                                      "Música",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                        fontSize: 16, // Font size
                                        fontWeight: FontWeight.w400, // Font weight
                                        height: 20 / 16, // Line height of 20px
                                      ),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                    ),
                                    Text(
                                      "Slipknot",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                                        fontSize: 16, // Font size
                                        fontWeight: FontWeight.w400, // Font weight
                                        height: 20 / 16, // Line height of 20px
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),






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
