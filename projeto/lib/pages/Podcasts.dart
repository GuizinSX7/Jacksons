import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({super.key});

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  final List<Map<String, String>> podcasts = [
    {
      'title': 'Igão & Mítico - Podpah',
      'image': 'assets/aerials.png', // Substitua pelo caminho da sua imagem
      'duration': '2 hrs 15 mins'
    },
    {
      'title': 'Flow Podcast',
      'image': 'assets/aerials.png', // Substitua pelo caminho da sua imagem
      'duration': '1 hr 45 mins'
    },
    // Adicione mais podcasts aqui, se desejar
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Appbar(),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: podcasts.length,
        itemBuilder: (context, index) {
          return PodcastCard(
            title: podcasts[index]['title']!,
            image: podcasts[index]['image']!,
            duration: podcasts[index]['duration']!,
          );
        },
      ),
    );
  }
}

class PodcastCard extends StatelessWidget {
  final String title;
  final String image;
  final String duration;

  PodcastCard({required this.title, required this.image, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200, // Definindo uma altura fixa para a imagem
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    duration,
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
