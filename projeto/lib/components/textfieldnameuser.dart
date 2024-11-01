import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class CustomTextFieldNameUser extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFieldNameUser({
    Key? key,
    required this.controller,
    this.hintText = "Nome de usuário",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 45,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
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
      ),
    );
  }
}
