import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenha a rota atual
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '';

    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Icon(Icons.person_outline, color: MyColors.roxo),
          ),
          SizedBox(width: 9), // Espaçamento entre ícone e o primeiro botão
          _buildButton(context, 'Home', '/Home', currentRoute),
          SizedBox(width: 9), // Espaçamento entre os botões
          _buildButton(context, 'Musicas', '/Musics', currentRoute),
          SizedBox(width: 9), // Espaçamento entre os botões
          _buildButton(context, 'Podcasts', '/Podcasts', currentRoute),
          SizedBox(width: 9), // Espaçamento entre os botões
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/Pesquisa', (route) => false);
            },
            child: Icon(Icons.search, color: MyColors.roxo),
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
        backgroundColor: MaterialStateProperty.all(isActive ? MyColors.roxo : Colors.black),
        side: MaterialStateProperty.all(BorderSide(color: MyColors.roxo)),
      ),
    );
  }
}
