import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class AnimationWidget extends StatefulWidget {
  final VoidCallback showLogin;
  final VoidCallback showCadastro;

  const AnimationWidget({
    Key? key,
    required this.showLogin,
    required this.showCadastro,
  }) : super(key: key);

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  double _indicatorPosition = 80.0; // Posição do indicador
  double _indicatorWidth = 85.0; // Largura da barra do indicador

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 93,),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 28),
                    ),
                    onTap: () {
                      setState(() {
                        _indicatorPosition = 80.0;
                        _indicatorWidth = 85.0;
                      });
                      widget.showLogin(); // Atualiza a tela principal para mostrar o Login
                    },
                  ),
                  const SizedBox(width: 25.50),
                  GestureDetector(
                    child: const Text(
                      "Cadastre-se",
                      style: TextStyle(fontSize: 24),
                    ),
                    onTap: () {
                      setState(() {
                        _indicatorPosition = 182.0;
                        _indicatorWidth = 145.0;
                      });
                      widget.showCadastro(); // Atualiza a tela principal para mostrar o Cadastro
                    },
                  ),
                ],
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                bottom: 0,
                left: _indicatorPosition,
                child: Container(
                  width: _indicatorWidth,
                  height: 3,
                  color: MyColors.roxo,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
