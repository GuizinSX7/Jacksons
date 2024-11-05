import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class ContiCadastro extends StatelessWidget {
  const ContiCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 71),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: 11.96 * (3.14 / 180),
                    child: Image.asset(
                      "assets/Jacksons.png",
                      width: 79.29,
                      height: 49.65,
                    ),
                  ),
                  const Text(
                    "Jacksons",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 52,),
              const Text(
                "Falta pouco",
                style: TextStyle(
                  fontSize: 34
                ),
              ),
              const SizedBox(
                width: 430,
                height: 67,
                child: Text(
                  ""
                ),
              ),
            ],
          ),
        ),   
      ),
    );
  }
}