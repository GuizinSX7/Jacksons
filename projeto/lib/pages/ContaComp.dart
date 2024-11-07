import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/components/LoginComp.dart';
import 'package:projeto/components/CadastroComp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controlleremailLogin = TextEditingController();
  final TextEditingController _controllerpasswordLogin = TextEditingController();
  final TextEditingController _controleruserCadastro = TextEditingController();
  final TextEditingController _controleremailCadastro = TextEditingController();
  final TextEditingController _controlerpasswordCadastro = TextEditingController();
  final TextEditingController _controlerconfirmpasswordCadastro = TextEditingController();
  bool _showLogin = true;
  double _indicatorPosition = 80.0; // Controle da posição do retângulo indicador
  bool _tamanhoLoginAnim = true;
  double _tamanhoDaBarraWidht = 85.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: SingleChildScrollView(
        child: Form(
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
                  const Text(
                    "Jacksons",
                    style: TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 83),
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
                            _showLogin = true;
                            _indicatorPosition = 80.0; // Move o retângulo para o "Login"
                            _tamanhoLoginAnim = true;
                          });
                          if (_tamanhoLoginAnim) {
                            setState(() {
                              _tamanhoDaBarraWidht = 85.0;
                            });
                          }
                        },
                      ),
                      const SizedBox(
                        width: 25.50,
                      ),
                      GestureDetector(
                        child: const Text(
                          "Cadastre-se",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _showLogin = false;
                            _indicatorPosition = 182.0; // Move o retângulo para o "Cadastre-se"
                            _tamanhoLoginAnim = false;
                          });
                          if (!_tamanhoLoginAnim) {
                            _tamanhoDaBarraWidht = 145.0;
                          }
                        },
                      ),
                    ],
                  ),
                  // Retângulo indicador de seleção
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300), // Animação suave
                    curve: Curves.easeInOut,
                    bottom: 0,
                    left: _indicatorPosition,
                    child: Container(
                      width: _tamanhoDaBarraWidht,
                      height: 3,
                      color: MyColors.roxo, // Cor do retângulo
                    ),
                  ),
                ],
              ),
              if (_showLogin)
                LoginCompWidget(
                  emailController: _controlleremailLogin,
                  passwordController: _controllerpasswordLogin,
                )
              else
                CustomTextFieldPassword(
                  usernameController: _controleruserCadastro,
                  emailController: _controleremailCadastro,
                  passwordController: _controlerpasswordCadastro,
                  confirmPasswordController: _controlerconfirmpasswordCadastro,
                )
            ],
          ),
        ),
      ),
    );
  }
}
