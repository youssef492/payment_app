import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/failures.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required Map<String, dynamic> paymentIntentInput,
  });
}
