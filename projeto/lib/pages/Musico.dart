import 'package:flutter/material.dart';

class Musico extends StatefulWidget {
  const Musico({super.key});

  @override
  State<Musico> createState() => _MusicoState();
}

class _MusicoState extends State<Musico> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Get the screen width

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
          child: Stack(
            children: [
              Container(
                width: screenWidth, // Set width to screen width
                child: Image.asset(
                  'assets/corey_taylor.png',
                  fit: BoxFit.cover, // Ensure the image covers the width while maintaining aspect ratio
                ),
              ),
              Positioned(
                bottom: 16, // Adjust this value as needed
                left: 16,   // Adjust this value as needed
                child: Text(
                  'Corey Taylor',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 24,       // Text size
                    fontWeight: FontWeight.bold, // Text weight
                    backgroundColor: Colors.black54, // Optional: background for better visibility
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
