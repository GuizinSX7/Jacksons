import 'package:flutter/material.dart';
import 'dart:math';

import 'package:projeto/Shared/style.dart'; // Para usar a constante pi

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false; // Estado da checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 140), // Espaçamento de 140 pixels do topo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: 11.96 * (pi / 180),
                  child: Image.asset(
                    'assets/Jacksons.png',
                    width: 116,
                    height: 80,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Jacksons',
                  style: TextStyle(
                    fontSize: 42,
                    color: MyColors.branco,
                  ),
                ),
              ],
            ),
            SizedBox(height: 163), // Espaçamento entre a imagem e os inputs
            // Caixas de texto
            Column(
              children: [
                Container(
                  width: 300,
                  height: 44.28, // Altura do input
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Seu e-mail',
                      hintStyle: TextStyle(
                        color: MyColors.pretotransparente,
                        height: 1.0, // Ajusta a altura da linha
                      ),
                      filled: true,
                      fillColor: MyColors.cinzacaixatexto, // Cor de fundo da caixa
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(102.0), // Bordas arredondadas
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 11.0,
                        horizontal: 16.0,
                      ), // Ajuste vertical
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaçamento entre os inputs
                Container(
                  width: 300,
                  height: 44.28, // Altura do input
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Sua senha',
                      hintStyle: TextStyle(
                        color: MyColors.pretotransparente,
                        height: 1.0, // Ajusta a altura da linha
                      ),
                      filled: true,
                      fillColor: MyColors.cinzacaixatexto, // Cor de fundo da caixa
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(102.0), // Bordas arredondadas
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 11.0,
                        horizontal: 16.0,
                      ), // Ajuste vertical
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaçamento entre os inputs e a checkbox
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _isChecked, // Estado da checkbox
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false; // Atualiza o estado
                        });
                      },
                    ),
                    Text(
                      'Lembre-se de mim',
                      style: TextStyle(
                        color: MyColors.branco, // Cor do texto da checkbox
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
