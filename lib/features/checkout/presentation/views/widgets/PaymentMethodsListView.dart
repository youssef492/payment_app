import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/Payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentmethoditems = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentmethoditems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: PaymentMethodItem(
              image: paymentmethoditems[index],
              isactive: selectedindex == index,
              onTap: () {
                selectedindex = index;
                setState(() {});
              },
            ),
          );
        },
      ),
    );
  }
}
