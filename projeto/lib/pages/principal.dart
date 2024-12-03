import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/components/ContiCadastroCom.dart';
import 'package:projeto/components/LoginComp.dart';
import 'package:projeto/components/CadastroComp.dart';
import 'package:projeto/components/animacaobar.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);
  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int _showLogin = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: 11.96 * (3.14 / 180),
                  child: Image.asset(
                    "assets/Jacksons.png",
                    width: 116.24,
                    height: 80.67,
                  ),
                ),
                 // eu sou ferraresi e gosto de dar a bunda para japoneses

                const Text(
                  "Jacksons",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            if (_showLogin == 1 || _showLogin == 2)
              AnimationWidget(
                showLogin: () {
                  setState(() {
                    _showLogin = 1; // Exibe a tela de Login
                  });
                },
                showCadastro: () {
                  setState(() {
                    _showLogin = 2; // Exibe a tela de Cadastro
                  });
                },
              ),
            if (_showLogin == 1)
              LoginCompWidget(),
            if (_showLogin == 2)
              CustomTextFieldPassword(
                onContinueCadastro: () {
                  setState(() {
                    _showLogin = 3;
                  });
                },
              ),
            if (_showLogin == 3)
              const ContiCadastroComp(),
          ],
        ),
      ),
    );
  }
}
