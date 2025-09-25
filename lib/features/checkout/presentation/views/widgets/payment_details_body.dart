import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/CustomButton.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/CustomCreditCardItem.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/PaymentMethodsListView.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/Thank_you_view_body.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: PaymentMethodsListView(),
          ),
        ),
        SliverToBoxAdapter(child: CustomCreditCardItem(formKey: formKey)),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(
                text: 'Pay Now',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    // Process payment
                    print("Payment processed");
                    formKey.currentState!.save();
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThankYouView()),
                    );
                    print("Invalid card details");
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
