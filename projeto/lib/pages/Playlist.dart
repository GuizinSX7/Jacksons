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
              Color(0xFF000000),
              Color(0xFFAD3A3A),
            ],
            stops: [0.596, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center items vertically
            children: [
              // Button styled as per the request
              GestureDetector(
                onTap: () {
                  // Handle button tap
                  print('Classificar button pressed');
                },
                child: Container(
                  width: 83,  // Width equivalent to 83px
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
                        height: 20 / 13, 
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Space between button and text field
              
              // TextField for "Nova Playlist"
              Container(
                width: 256, // Width equivalent to 256px
                height: 30, // Height equivalent to 30px
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
              const SizedBox(height: 20), // Space between text input and next elements
              
              // First image
              Image.asset(
                'assets/playlist.png',
                width: 30, // Width of the first image
              ),
              
              const Text(
                'Nome da Playlist',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  height: 20 / 30,
                ),
              ),
              const SizedBox(height: 20),

              Row(
                
                children: [
                  Image.asset(
                    'assets/download button.png',
                    width: 15,
                    height: 15,),

                  Image.asset(
                  'assets/Vector.png',
                  width: 15,
                  height: 15,),
                  Icon(
                    Icons.more_vert, 
                    size: 15,
                  ),
                  Icon(
                    Icons.person_add,
                    size: 15
                  )


                ]
              
                

              ),
              

              // Row for image and text
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center items in the row
                children: [
                  Image.asset(
                    'assets/slipknot_image.jpg',
                    width: 50, // Set the desired width for the image
                  ),
                  const SizedBox(width: 10), // Space between image and text
                  const Text(
                    "Psychosocial",
                    style: TextStyle(
                      color: Colors.white, // Adding style for better readability
                      fontSize: 20, // Optional: Adjust font size as desired
                    ),
                  ),
                ],
              ),

              // Text "Música" below "Psychosocial"
              const SizedBox(height: 10), // Space between "Psychosocial" and "Música"
              Text(
                "Música",
                style: TextStyle(
                  color: const Color.fromRGBO(143, 137, 137, 0.30), // Color rgba(143, 137, 137, 0.30)
                  fontSize: 16, // Font size
                  fontWeight: FontWeight.w400, // Font weight
                  height: 20 / 16, // Line height of 20px
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center items in the row
                children: [
                  Image.asset(
                    'assets/slipknot_image.jpg',
                    width: 50, // Set the desired width for the image
                  ),
                  const SizedBox(width: 10), // Space between image and text
                  const Text(
                    "Psychosocial",
                    style: TextStyle(
                      color: Colors.white, // Adding style for better readability
                      fontSize: 20, // Optional: Adjust font size as desired
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
