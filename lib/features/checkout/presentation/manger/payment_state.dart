class PaymentState {
  const PaymentState();
}

class PaymentInitial extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentSuccess extends PaymentState {}

class PaymentFailure extends PaymentState {
  final String message;

  const PaymentFailure(this.message);
}
