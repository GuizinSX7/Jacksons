import 'package:flutter/material.dart';
import 'dart:math';

import 'package:projeto/Shared/style.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;
  bool _obscurePassword = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 140),
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
                SizedBox(height: 163),
                Column(
                  children: [
                    _buildTextField(
                      controller: _emailController,
                      hint: 'Seu e-mail',
                      obscureText: false,
                    ),
                    SizedBox(height: 20),
                    _buildTextField(
                      controller: _passwordController,
                      hint: 'Sua senha',
                      obscureText: _obscurePassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          color: MyColors.pretotransparente, // Ajuste temporário
                        ),
                        onPressed: () {
                          print('Ícone pressionado'); // Debug
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: _isChecked,
                          activeColor: MyColors.roxo,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                        Text(
                          'Lembre-se de mim',
                          style: TextStyle(
                            color: MyColors.branco,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 285,
                      height: 50.77,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login logic here
                        },
                        child: Text(
                          'Logar',
                          style: TextStyle(fontSize: 24, color: MyColors.branco),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.roxo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Container(
      width: 330,
      height: 44.28,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: MyColors.pretotransparente,
            height: 1.0,
            fontSize: 18,
          ),
          filled: true,
          fillColor: MyColors.cinzacaixatexto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(102.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 11.0,
            horizontal: 16.0,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
