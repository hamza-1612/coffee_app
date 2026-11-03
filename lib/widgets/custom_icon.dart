import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

  const CustomIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff17181c),
      ),
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
