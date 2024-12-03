import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto/Shared/style.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final VoidCallback onContinueCadastro;
    
  CustomTextFieldPassword({
    Key? key,
    required this.onContinueCadastro,
  }) : super(key: key);

  @override
  _CustomTextFieldPasswordState createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _controleruserCadastro = TextEditingController();
  final TextEditingController _controleremailCadastro = TextEditingController();
  final TextEditingController _controlerpasswordCadastro = TextEditingController();
  final TextEditingController _controlerconfirmpasswordCadastro = TextEditingController();
  String password = "";
  bool _obscureTextPass = true;
  bool _obscureTextConfirmPass = true;
  final _formKey = GlobalKey<FormState>();

  Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _controleremailCadastro.text.trim(),
          password: _controlerpasswordCadastro.text.trim(),
        );

        await userCredential.user!.updateDisplayName(_controleruserCadastro.text.trim());
        await userCredential.user!.reload();
        _auth.currentUser; 
        _showSnackBar('Cadastro realizado com sucesso!', Colors.green);
        Navigator.pop(context);
      } catch (e) {
        _showSnackBar('Erro no cadastro: ${e.toString()}', Colors.red);
      }
    }
  }

  void _showSnackBar(String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureTextPass = !_obscureTextPass;
    });
  }

  void _toggleConfirmPasswordVisibility(){
    setState(() {
      _obscureTextConfirmPass = !_obscureTextConfirmPass;
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
            const SizedBox(height: 45,),
            TextFormField(
              controller: _controleruserCadastro,
              decoration: InputDecoration(
                hintText: "Nome de usuário",
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
            const SizedBox(height: 45,), // Espaço entre os campos
            TextFormField(
              controller: _controlerpasswordCadastro, 
              obscureText: _obscureTextPass,
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
                    _obscureTextPass ? Icons.visibility_off : Icons.visibility,
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
            const SizedBox(height: 45,),
            TextFormField(
              controller: _controlerconfirmpasswordCadastro, 
              obscureText: _obscureTextConfirmPass,
              decoration: InputDecoration(
                hintText: "Confirmar senha", 
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
                    _obscureTextConfirmPass ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _toggleConfirmPasswordVisibility,
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: MyColors.preto,
              ),
              validator: (String? confirmpassword) {
                if (confirmpassword == null || confirmpassword.isEmpty) {
                  return "A confirmação de senha não pode estar vazia";
                }
                if (confirmpassword != _controlerpasswordCadastro.text) {
                  return "As senhas não Coincidem";
                }
                return null;
              },
            ),
            const SizedBox(height: 45,),
            TextFormField(
              controller: _controleremailCadastro, 
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
              validator: (String? email) {
                if (email == null || email.isEmpty) {
                  return "O email não pode estar vazio";
                }
                if (email.length < 10) {
                  return "Email muito curto";
                }
                if (!email.contains("@")) {
                  return "O email inválido";
                }
                return null;
              },
            ),
            const SizedBox(height: 44,),
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
                    'Continuar',
                    style: TextStyle(
                      fontSize: 24,
                      color: MyColors.branco,
                    ),
                  ),
                )
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
      _register();
      widget.onContinueCadastro();
    } else {
      print('form erro');
    }
  }
} 
