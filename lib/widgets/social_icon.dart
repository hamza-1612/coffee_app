import 'package:flutter/material.dart';
import 'custom_icon.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomIcon(icon: Icons.facebook),
        CustomIcon(icon: Icons.facebook),
        CustomIcon(icon: Icons.facebook),
      ],
    );
  }
}
