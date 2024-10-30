import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 34, 34, 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Icon(Icons.person, color: Colors.white),
          ),
          SizedBox(width: 15), // Espaçamento entre ícone e o primeiro botão
          _buildButton(context, 'Home', '/Home'),
          SizedBox(width: 15), // Espaçamento entre os botões
          _buildButton(context, 'Musics', '/Musics'),
          SizedBox(width: 15), // Espaçamento entre os botões
          _buildButton(context, 'Playlist', '/Playlist'),
          SizedBox(width: 15), // Espaçamento entre os botões
          GestureDetector(
            onTap: () {
              // Adicione sua lógica de busca aqui
            },
            child: Icon(Icons.search, color: Colors.purple),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
      },
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        side: MaterialStateProperty.all(BorderSide(color: Colors.purple)),
      ),
    );
  }
}
