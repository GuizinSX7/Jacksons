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
      appBar: AppBar(
        title: FloatingActionButton(onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/Home', (route) => false);
        }),
      ),
    );
  }
}