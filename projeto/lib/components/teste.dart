import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 447 - 86,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(70)), // Only top corners
        border: Border(
          top: BorderSide(color: Color(0xFF830DEF), width: 1), // Border only at the top
        ),
      ),
      child: Center(
        child: Text(
          "Music Player",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}