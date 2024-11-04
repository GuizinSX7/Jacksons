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
  final TextEditingController _controlleremailLogin = TextEditingController(); // Controller do usuário
  final TextEditingController _controllerpasswordLogin = TextEditingController(); // Controller da senha
  final TextEditingController _controleruserCadastro = TextEditingController();
  final TextEditingController _controleremailCadastro = TextEditingController();
  final TextEditingController _controlerpasswordCadastro = TextEditingController();
  final TextEditingController _controlerconfirmpasswordCadastro = TextEditingController();
  bool _isChecked = false; // Variável para a checkbox

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
              const SizedBox(height: 163,),
              LoginCompWidget(
                emailController: _controlleremailLogin,
                passwordController: _controllerpasswordLogin,
              ),
            //   CustomTextFieldPassword(
            //     usernameController: _controleruserCadastro, 
            //     emailController: _controleremailCadastro, 
            //     passwordController: _controlerpasswordCadastro, 
            //     confirmPasswordController: _controlerconfirmpasswordCadastro)
            ],
          ),
        ),
      ),
    );
  }
}

