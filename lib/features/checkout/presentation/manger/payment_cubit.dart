import 'package:bloc/bloc.dart';
import 'package:payment_app/features/checkout/presentation/manger/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());
}
