class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  toJson() => '{"amount": ${amount}00, "currency": "$currency"}';
}
