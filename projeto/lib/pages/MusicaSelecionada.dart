import 'package:flutter/material.dart';

class Musicaselecionada extends StatefulWidget {
  const Musicaselecionada({super.key});

  @override
  State<Musicaselecionada> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Musicaselecionada> {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("TOCANDO DA PLAYLIST "),
                      Text("Nome da playlists"),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                  )

                ],
              ),
                            const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/aerials.png', width: 300,),
                ],
              ),

              const SizedBox(height: 60),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/aerials.png', width: 10),
                  Column(
                    children: [
                      Text('System of a Down - '),
                      Text('Aerials')
                      ],
                  ),
                  Image.asset('assets/download button pressed.png')
                ],
              ),
              const SizedBox(height: 60),


              Row(
                
              ),

              Row(
                children: [
                  Icon(
                    Icons.next_plan
                  ),
                  Icon(
                    Icons.play_arrow
                  )
                ],
              ),
            ],
          ),
        ),





      ),
    );
  }
}