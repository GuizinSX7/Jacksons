import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFieldPassword({
    Key? key,
    required this.controller,
    this.hintText = "Senha",
  }) : super(key: key);

  @override
  _CustomTextFieldPasswordState createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 45,
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
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
    );
  }
}
