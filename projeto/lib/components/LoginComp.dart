import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class LoginCompWidget extends StatefulWidget {
  final TextEditingController userController;
  final TextEditingController passwordController;
  final String hintText;

  const LoginCompWidget({
    Key? key,
    required this.userController,
    required this.passwordController,
    this.hintText = "Nome de usuário",
  }) : super(key: key);

  @override
  State<LoginCompWidget> createState() => _LoginCompWidgetState();
}

class _LoginCompWidgetState extends State<LoginCompWidget> {
  bool _obscureText = true;
  bool _isChecked = false;
  String _errorMessagePassword = "";
  String _errorMessageUser = "";
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
      child: Column(
        children: [
          Form(
            child: TextFormField(
              controller: widget.userController,
              decoration: InputDecoration(
                hintText: widget.hintText,
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
              validator: (String? password) {
                if (password == "" || password == null) {
                  return "A senha não pode estar vazia";
                }
                if (password.contains(" ")) {
                  return "senha inválida";
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
          ),
          Text(
            _errorMessageUser,
            style: const TextStyle(
              color: MyColors.vermelho,
              fontSize: 14,
            ),
            textAlign: TextAlign.start,
          ),            
          const SizedBox(height: 47), // Espaço entre os campos
          TextField(
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
          ),
          Text(
            _errorMessagePassword,
            style: const TextStyle(
              color: MyColors.vermelho,
              fontSize: 14,
            ),
            textAlign: TextAlign.start,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        activeColor: MyColors.roxo,
                        checkColor: MyColors.checkbox,
                        onChanged: (bool ? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      if (_isChecked)
                        const Icon(
                          Icons.check,
                          color: MyColors.branco,
                        ),
                    ],
                  ),
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
            const SizedBox(height: 41,),
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
                      color: MyColors.branco
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
            )
        ],
      ),
    );
  }
  buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print('form ok');
      Navigator.pushReplacementNamed(context, '/Home');
    } else {
      print('form erro');
    }
  }
}

