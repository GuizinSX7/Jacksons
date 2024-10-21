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
              Image.asset('assets/91e3790159448141666964149ef9f4d7.jpg'),
              const Text(
                "Psychosocial"
    
              )
            ],
          ),
        ),
      ),
    );
  }
}
