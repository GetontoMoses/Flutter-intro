import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController customTextFieldController;
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  const CustomTextField(
      {super.key,
      required this.customTextFieldController,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderRadius: BorderRadius.only()),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
