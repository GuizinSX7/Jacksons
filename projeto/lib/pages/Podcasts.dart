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
      'title': 'Podcast dos Jacksons',
      'image': 'assets/podcast1.jfif', 
      'duration': '2 hrs 15 mins',
      'icon': 'assets/icon.png', 
      'textBaixo': 'JackSONS!!!! ',
      'color': '0xFF000000', 
      'colorBorder': '0xFF830DEF', 
    },
    {
      'title': 'Igão & mitico',
      'image': 'assets/Podcast2.jpeg',
      'duration': '1 hr 10 mins',
      'icon': 'assets/PodcastIcon.jfif', 
      'textBaixo': 'igão brabo ai ',
      'color': '0xFF06A3C12', 
      'colorBorder': '0xFFFFFFFF', 
    },
    {
      'title': 'Jacksons a criação',
      'image': 'assets/Podcast3.jfif', 
      'duration': '5 hrs 25 mins',
      'icon': 'assets/icon.png', 
      'textBaixo': 'brabo o create tlgd',
      'color': '0xFF000000', 
      'colorBorder': '0xFF830DEF',
    },
    {
      'title': 'Flow PodeCaste',
      'image': 'assets/Podcast4.jpg', 
      'duration': '3 hrs 12 mins',
      'icon': 'assets/flowIcon.png', 
      'textBaixo': 'sdds do mano monarquia',
      'color': '0xFF000000', 
      'colorBorder': '0xFF830DEF', 
    },
    // Adicione mais podcasts aqui, se desejar
  ];

  @override
  Widget build(BuildContext context) {
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
            icon: podcasts[index]['icon']!,
            textBaixo: podcasts[index]['textBaixo']!,
            color: Color(int.parse(podcasts[index]['color']!)),
            colorBorder: Color(int.parse(podcasts[index]['colorBorder']!)),
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
  final String icon;
  final String textBaixo;
  final Color color;
  final Color colorBorder;

  PodcastCard({
    required this.title,
    required this.image,
    required this.duration,
    required this.icon,
    required this.textBaixo,
    required this.color,
    required this.colorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: colorBorder, width: 2), // Borda com cor personalizada
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título, ícone e duração no topo em linhas separadas
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(13), bottom: Radius.circular(13)),
                        child: Image.asset(
                          icon,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    duration,
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3),
            ClipRRect(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),
            SizedBox(height: 3),
            // Texto abaixo da imagem com cor de fundo personalizada
            Container(
              color: color,
              width: double.infinity,
              padding: EdgeInsets.all(7.0),
              child: Text(
                ' ${textBaixo} \n ${duration}',
                style: TextStyle(color: Colors.grey, fontSize: 9),
                
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.replay, color: Colors.white),
                  Row(
                    children: [
                      Icon(Icons.more_vert, color: Colors.white),
                      SizedBox(width: 8), // Espaço entre os ícones
                      Icon(Icons.play_arrow, color: Colors.white,),
                    ],
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
