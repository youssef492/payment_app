class PaymentIntentInputModel {
  final int amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  Map<String, dynamic> toMap() {
    return {'amount': amount, 'currency': currency};
  }

  toJson() => '{"amount": $amount, "currency": "$currency"}';
}
