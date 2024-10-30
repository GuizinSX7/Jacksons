import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({super.key});

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        title: Appbar(),
      ),
    );
  }
}