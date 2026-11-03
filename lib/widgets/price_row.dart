import 'package:flutter/material.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({super.key, required this.label, required this.amount});

  final String label;
  final String amount;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Color(0xff39260B), fontSize: 12);

    return Row(
      children: [
        Text(label, style: textStyle),
        const SizedBox(width: 5),
        const Expanded(
          child: Divider(color: Color(0xff39260B), thickness: 0.5),
        ),
        const SizedBox(width: 5),
        Text(amount, style: textStyle),
      ],
    );
  }
}
