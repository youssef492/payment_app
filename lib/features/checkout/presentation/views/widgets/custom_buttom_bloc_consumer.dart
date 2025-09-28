import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentation/manger/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/manger/payment_state.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/CustomButton.dart';

class custom_buttom_bloc_consumer extends StatelessWidget {
  const custom_buttom_bloc_consumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ThankYouView();
              },
            ),
          );
        }
        if (state is PaymentFailure) {
          // Handle payment failure
          Navigator.of(context).pop(); // Close the bottom sheet
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          isloading: state is PaymentLoading ? true : false,
          text: 'Continue',
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(amount: '5000', currency: 'USD');
            BlocProvider.of<PaymentCubit>(
              context,
            ).makePayment(paymentIntentInput: paymentIntentInputModel);
          },
        );
      },
    );
  }
}
