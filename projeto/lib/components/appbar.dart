import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenha a rota atual
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '';

    return Container(
      color: Color.fromARGB(255, 34, 34, 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Icon(Icons.person, color: Colors.white),
          ),
          SizedBox(width: 10), // Espaçamento entre ícone e o primeiro botão
          _buildButton(context, 'Home', '/Home', currentRoute),
          SizedBox(width: 10), // Espaçamento entre os botões
          _buildButton(context, 'Musics', '/Musics', currentRoute),
          SizedBox(width: 10), // Espaçamento entre os botões
          _buildButton(context, 'Podcasts', '/Podcasts', currentRoute),
          SizedBox(width: 10), // Espaçamento entre os botões
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

  Widget _buildButton(BuildContext context, String label, String route, String currentRoute) {
    bool isActive = currentRoute == route; // Verifica se a rota atual é igual à rota do botão

    return TextButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
      },
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(isActive ? Colors.purple : Colors.black),
        side: MaterialStateProperty.all(BorderSide(color: Colors.purple)),
      ),
    );
  }
}
