import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/CustomButton.dart';

class CustomCreditCardItem extends StatefulWidget {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;
  CustomCreditCardItem({
    super.key,
    this.cardNumber = '',
    this.expiryDate = '',
    this.cardHolderName = '',
    this.cvvCode = '',
    this.showBackView = false,
    required this.formKey,
    this.autovalidateMode = AutovalidateMode.disabled,
    // this.onCreditCardWidgetChange,
  });
  // final Function(CreditCardBrand)? onCreditCardWidgetChange;
  final GlobalKey<FormState> formKey;
  AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCardItem> createState() => _CustomCreditCardItemState();
}

class _CustomCreditCardItemState extends State<CustomCreditCardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          height: 192,
          width: MediaQuery.of(context).size.width * 0.9,
          cardNumber: widget.cardNumber,
          expiryDate: widget.expiryDate,
          cardHolderName: widget.cardHolderName,
          cvvCode: widget.cvvCode,
          showBackView: widget.showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: widget.cardNumber,
          expiryDate: widget.expiryDate,
          cardHolderName: widget.cardHolderName,
          cvvCode: widget.cvvCode,
          onCreditCardModelChange: (CreditCardModel) {
            widget.cardHolderName = CreditCardModel.cardHolderName;
            widget.cardNumber = CreditCardModel.cardNumber;
            widget.expiryDate = CreditCardModel.expiryDate;
            widget.cvvCode = CreditCardModel.cvvCode;
            widget.showBackView = CreditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
