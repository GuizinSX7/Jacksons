import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  double _largura = 85.0;
  double _altura = 3.0;
  Color _cor = Colors.blue;

  void _animar() {
    setState(() {
      _largura = _largura == 85.0 ? 132.0 : 85.0;
      _altura = _altura == 3.0 ? 3.0 : 3.0;
      _cor = _cor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 28,
              color: MyColors.branco,
            ),
          ),
          Text(
            'Registra-se',
            style: TextStyle(
              fontSize: 24,
              color: MyColors.branco,
            ),
          )
        ],
      ),
    );
  }
}
