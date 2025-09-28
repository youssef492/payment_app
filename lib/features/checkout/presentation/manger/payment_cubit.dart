import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:payment_app/features/checkout/presentation/manger/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future<void> makePayment({required paymentIntentInput}) async {
    emit(PaymentLoading());
    final data = await checkoutRepo.makePayment(
      paymentIntentInput: paymentIntentInput,
    );
    data.fold(
      (l) => emit(PaymentFailure(l.message)),
      (r) => emit(PaymentSuccess()),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    // TODO: implement onChange
    log(change.toString());
    super.onChange(change);
  }
}
