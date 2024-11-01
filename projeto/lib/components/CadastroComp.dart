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
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
