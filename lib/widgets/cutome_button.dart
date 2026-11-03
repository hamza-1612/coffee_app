import 'package:flutter/material.dart';

class CutomeButton extends StatelessWidget {
  final GlobalKey<FormState> fromKey;
  final String text;

  const CutomeButton({
    super.key,
    required this.fromKey,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          if (fromKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("ok")),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffce975e),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
