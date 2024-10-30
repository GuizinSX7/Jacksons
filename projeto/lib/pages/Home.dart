import 'package:flutter/material.dart';
import 'package:projeto/components/appbar.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        title: Appbar(),
      ),
      body: Container(
        child: Column(
          children: [
            Row(),
            Row(),
            Row()
          ],
        ),
      ),
    );
  }
}