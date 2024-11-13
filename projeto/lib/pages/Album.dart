import 'package:flutter/material.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  

  @override
  State<Album> createState() => _AlbumState();
}



class _AlbumState extends State<Album> {

  
  @override

  
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF000000), // #000 59.6%
                  Color(0xFF74502A)
              ],
              stops: [0.6, 1.0],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(217, 217, 217, 0.15),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.search, color: Colors.white70, size: 20),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      border: InputBorder.none,
                                      hintText: 'Procurar nesta Album',
                                      hintStyle: TextStyle(color: Colors.white70),
                                    ),
                                    style: const TextStyle(fontSize: 12),
                                    textAlign: TextAlign.left,
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
                        width: 70,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.15),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Classificar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Removed the `Expanded` widget here
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/aerials.png',
                        width: 200,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Toxicity',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/download button.png',
                              width: 28,
                            ),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.person_add,
                              size: 28,
                              color: Color.fromRGBO(60, 57, 57, 1),
                            ),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.more_vert,
                              size: 28,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            const SizedBox(width: 8),
                            Image.asset(
                              'assets/Vector.png',
                              width: 28,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Center container for aligning the songs
                      Center(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/aerials.png',
                                  width: 70,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Prison Song",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "Música",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: Color.fromRGBO(143, 137, 137, 0.30),
                                        ),
                                        const Text(
                                          "System of a Down",
                                          style: TextStyle(
                                            color: Color.fromRGBO(143, 137, 137, 0.30),
                                            fontSize: 14,
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
                                        "Deer Dance",
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
                                        "X",
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
                                        "Bounce",
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
                                        "ATWA",
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
                                        "Shimmy",
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
                                        "Psycho",
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
                                        "Needles",
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
                                        "Jet Pilot",
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
                                        "Chop Suey!",
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
                                        "Forest",
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
                                        "Science",
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
                                        "Toxicity",
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
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
              ],
                ),
          ),
          ),
        )
      );
  }
}
