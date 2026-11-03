import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String valText;
  final String hintText;

  const CustomField({
    super.key,
    required this.valText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return valText;
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xff17181c),
      ),
    );
  }
}
