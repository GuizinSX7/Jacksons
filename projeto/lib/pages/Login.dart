import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.preto,
        body: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Transform.rotate(
                            angle: 11.96 * (3.14 / 180),
                            child: Image.asset(
                            'assets/Jacksons.png',
                            width: 116.24,
                            height: 80.67,
                            ),
                        ),
                        GestureDetector(
                          child: Text(
                              'Jacksons',
                              style: TextStyle(
                                  color: MyColors.branco,
                                  fontSize: 42,
                              ),
                          ),
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(context, '/Home', (route) => false);
                          },
                        ),
                    ],
                )
            ),
        );
    }
}