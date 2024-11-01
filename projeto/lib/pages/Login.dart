import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:projeto/components/textfieldnameuser.dart';
import 'package:projeto/components/textfieldpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _controlleruser = TextEditingController();
  final TextEditingController _controllerpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: Form(
        child: Column(  
          children: [
            const SizedBox(height: 140), // Espaço de 140 pixels do teto
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
            CustomTextFieldNameUser(controller: _controlleruser),
            const SizedBox(height: 47,),
            CustomTextFieldPassword(controller: _controllerpassword),
          ],
        ),
      ),
    );
  }
}
