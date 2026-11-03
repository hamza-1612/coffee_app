import 'package:flutter/material.dart';
import 'register.dart';
import '../widgets/front_text.dart';
import '../widgets/login_form.dart';
import '../widgets/social_icon.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Column(
            children: [
              const SizedBox(height: 90),
              const FrontText(text: "welcome to login"),
              const SizedBox(height: 40),
              const LoginForm(),
              const SizedBox(height: 60),
              const SocialIcon(),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                  },
                  child: const Text("do not have acc"))
            ],
          ),
        ),
      ),
    );
  }
}
