import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:projeto/Shared/style.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginCompWidget extends StatefulWidget {
  @override
  State<LoginCompWidget> createState() => _LoginCompWidgetState();
}

class _LoginCompWidgetState extends State<LoginCompWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _controllerEmailLogin = TextEditingController();
  final TextEditingController _controllerPasswordLogin = TextEditingController();
  bool _obscureText = true;
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();

  Future<User?> signInWithGoogle() async {
    try {
      // Inicia o Google Sign-In
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null; // O usuário cancelou o login
      }

      // Obtém o token de autenticação
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Cria uma credencial do Firebase com o token do Google
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Faz login no Firebase com a credencial
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      return userCredential.user;
    } catch (e) {
      print("Erro ao fazer login com o Google: $e");
      return null;
    }
  }

  Future<void> _login() async {
    try {
      if (_formKey.currentState!.validate()) {}

      await _auth.signInWithEmailAndPassword(
        email: _controllerEmailLogin.text,
        password: _controllerPasswordLogin.text,
      );

      Navigator.pushReplacementNamed(
        context, 
        "/Home",
      );
    } catch (e) {
      _showSnackBar('Me chame de lord right?: $e', Colors.red);
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
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: 356,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 56,
            ),
            TextFormField(
              controller: _controllerEmailLogin,
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
                  return "O Email não pode estar vazio";
                }
                if (user.length < 5) {
                  return "O email deve conter pelo menos 5 caracteres";
                }
                if (!RegExp(r'[^a-zA-Z]').hasMatch(user)) {
                  return "O email do usuário deve conter pelo menos um caracter especial";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 47,
            ),
            TextFormField(
              controller: _controllerPasswordLogin,
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
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 51,
            ),
            SizedBox(
              width: 286,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    _login();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.roxo,
                  ),
                  child: const Center(
                    child: Text(
                      "Logar",
                      style: TextStyle(
                        fontSize: 24,
                        color: MyColors.branco,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 26,
            ),
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
            const SizedBox(height: 20,),
            GestureDetector(
              child: Image.asset(
                "assets/icon_google.png",
                width: 50,
                height: 50,
              ),
              onTap: () async {
                User? user = await signInWithGoogle();
                if (user != null) {
                  // Se o usuário logou com sucesso, navegue para a próxima tela
                  Navigator.pushReplacementNamed(context, '/Home');
                } else {
                  // Se o login falhou ou foi cancelado
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Falha no login")),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
