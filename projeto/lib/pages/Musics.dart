import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';
class Musics extends StatefulWidget {
  const Musics({super.key});

  @override
  State<Musics> createState() => _MusicsState();
}

class _MusicsState extends State<Musics> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        title: Appbar(),
      ),
    );
  }
}