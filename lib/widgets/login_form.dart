import 'package:flutter/material.dart';
import 'custom_field.dart';
import 'cutome_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final fromKey = GlobalKey<FormState>();
    return Form(
      key: fromKey,
      child: Column(
        children: [
          CustomField(valText: 'enter your email', hintText: 'email'),
          const SizedBox(height: 20),
          CustomField(valText: 'enter your password', hintText: 'password'),
          const SizedBox(height: 40),
          CutomeButton(fromKey: fromKey, text: 'login')
        ],
      ),
    );
  }
}
