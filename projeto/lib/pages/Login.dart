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
  final TextEditingController _controlleruser = TextEditingController(); // Controller do usuário
  final TextEditingController _controllerpassword = TextEditingController(); // Controller da senha
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
<<<<<<< HEAD
                ],
              ),
              const SizedBox(height: 163,),
              LoginCompWidget(
                userController: _controlleruser,
                passwordController: _controllerpassword,
              ),
            ],
          ),
=======
                ),
              ],

              
            ),
            const SizedBox(height: 163,),
            CustomTextFieldNameUser(controller: _controlleruser),
            const SizedBox(height: 47,),
            CustomTextFieldPassword(controller: _controllerpassword),
          ],
>>>>>>> aa77faefcf4bd959f9227474e532e32a0e56fa16
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/Home', (route) => false);
      }),
    );
  }
}

