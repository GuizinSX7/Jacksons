import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class LoginCompWidget extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginCompWidget({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  State<LoginCompWidget> createState() => _LoginCompWidgetState();
}

class _LoginCompWidgetState extends State<LoginCompWidget> {
  bool _obscureText = true;
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 56,),
            TextFormField(
              controller: widget.emailController,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(102),
                ),
                filled: true,
                fillColor: MyColors.cinzacaixatexto,
                hintStyle: const TextStyle(
                  fontSize: 18,
                  color: MyColors.pretotransparente,
                ),
                contentPadding: const EdgeInsets.only(left: 16, top: 14),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: MyColors.preto,
              ), 
              validator: (String? user) {
                if (user == null || user.isEmpty) {
                  return "O nome de usuário não pode estar vazio";
                }
                if (user.length < 3) {
                  return "O nome de usuário deve conter pelo menos 3 caracteres";
                }
                if (RegExp(r'[^a-zA-Z]').hasMatch(user)) {
                  return "O nome de usuário deve conter apenas letras";
                }
                return null;
              },
            ),
            const SizedBox(height: 47,), // Espaço entre os campos
            TextFormField(
              controller: widget.passwordController, 
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: "Senha", 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(102),
                ),
                filled: true,
                fillColor: MyColors.cinzacaixatexto,
                hintStyle: const TextStyle(
                  fontSize: 18,
                  color: MyColors.pretotransparente,
                ),
                contentPadding: const EdgeInsets.only(left: 16, top: 14),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: MyColors.preto,
              ),
              validator: (String? password) {
                if (password == null || password.isEmpty) {
                  return "A senha não pode estar vazia";
                }
                if (password.contains(" ")) {
                  return "Senha inválida";
                }
                if (password.length < 8) {
                  return "A senha deve conter pelo menos 8 caracteres";
                }
                if (!RegExp(r'[a-zA-Z]').hasMatch(password)) {
                  return "A senha deve conter pelo menos uma letra";
                }
                if (!RegExp(r'[0-9]').hasMatch(password)) {
                  return "A senha deve conter pelo menos um número";
                }
                if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
                  return "A senha deve conter pelo menos um caracter especial";
                }
                return null;
              },
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _isChecked,
                  activeColor: MyColors.roxo,
                  checkColor: MyColors.branco,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                const Text(
                  "Lembre-se de mim",
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 51,),
            SizedBox(
              width: 286,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  buttonEnterClick();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.roxo,
                ),
                child: const Center(
                  child: Text(
                    'Logar',
                    style: TextStyle(
                      fontSize: 24,
                      color: MyColors.branco,
                    ),
                  ),
                )
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              child: const Text(
                "Esqueci minha senha",
                style: TextStyle(
                  fontSize: 16,
                  color: MyColors.branco,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print('form ok');
      Navigator.pushReplacementNamed(context, '/Home');
    } else {
      print('form erro');
    }
  }
}
