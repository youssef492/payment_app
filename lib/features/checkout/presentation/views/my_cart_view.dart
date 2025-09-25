import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/Custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: custom_app_bar(context, 'My Cart'),
        body: MyCartViewBody(),
      ),
    );
  }
}
