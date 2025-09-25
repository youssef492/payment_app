import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/Custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(context, 'Payment Details'),
      
      body: PaymentDetailsBody(),
    );
  }
}
