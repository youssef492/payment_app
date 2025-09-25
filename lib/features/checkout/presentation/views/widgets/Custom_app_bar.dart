import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar custom_app_bar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(title, style: Styles.style25),
    centerTitle: true,
  );
}
