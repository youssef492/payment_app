import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text('$title', style: Styles.style24),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text('\$$price', style: Styles.style24),
        ),
      ],
    );
  }
}
