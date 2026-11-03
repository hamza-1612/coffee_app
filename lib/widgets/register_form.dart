import 'package:flutter/material.dart';
import 'custom_field.dart';
import 'cutome_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final fromKey = GlobalKey<FormState>();
    return Form(
        key: fromKey,
        child: Column(
          children: [
            CustomField(valText: "enter name", hintText: "name"),
            const SizedBox(height: 20),
            CustomField(valText: "enter email", hintText: "email"),
            const SizedBox(height: 20),
            CustomField(valText: "enter pass", hintText: "pass"),
            const SizedBox(height: 20),
            CustomField(valText: "confrom pass", hintText: "conform pass"),
            const SizedBox(height: 40),
            CutomeButton(fromKey: fromKey, text: "register")
          ],
        ));
  }
}
