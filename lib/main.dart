import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const MyCartView());
}

// create payment intent (amount , currency)
// init payment sheet (paymentIntentClientSecret)
// display payment sheet
// confirm payment sheet


//////////////////////////////////////////////////////////
///
///// create payment intent (amount , currency , customer id)
///create ephemeral key (stripe version , customer id)
/// init payment sheet (merchant display name, customer id, paymentIntentClientSecret, ephemeralKeySecret)
/// display payment sheet
/// confirm payment sheet