import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/CustomButton.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/PaymentMethodsListView.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_buttom_bloc_consumer.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        PaymentMethodsListView(),
        SizedBox(height: 20),
        custom_buttom_bloc_consumer(),
        SizedBox(height: 20),
      ],
    );
  }
}
