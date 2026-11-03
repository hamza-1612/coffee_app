import 'package:flutter/material.dart';
import '../widgets/front_text.dart';
import '../widgets/register_form.dart';
import '../widgets/social_icon.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          children: const [
            SizedBox(height: 50),
            FrontText(text: 'Register your account'),
            SizedBox(height: 20),
            RegisterForm(),
            SizedBox(height: 40),
            SocialIcon()
          ],
        ),
      ),
    ));
  }
}
