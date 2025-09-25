import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/CustomButton.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/PaymentMethodsListView.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/Total_price.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/order_info_item_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/Group 7.png')),
        SizedBox(height: 18),
        OrderInfoItem(orderSubtotal: 'Order Subtotal', shippingCost: '42'),
        SizedBox(height: 3),
        OrderInfoItem(orderSubtotal: 'Discount', shippingCost: '0'),
        SizedBox(height: 3),
        OrderInfoItem(orderSubtotal: 'Shipping', shippingCost: '8'),
        SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Divider(thickness: 1, color: Colors.grey.withOpacity(0.5)),
        ),
        SizedBox(height: 10),
        TotalPrice(title: 'Total', price: '50'),
        SizedBox(height: 40),
        CustomButton(
          text: 'Proceed to Payment',
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PaymentDetails()),
            // );
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return PaymentMethodsBottomSheet();
              },
            );
          },
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        PaymentMethodsListView(),
        SizedBox(height: 20),
        CustomButton(text: 'Continue', onTap: () {}),
        SizedBox(height: 20),
      ],
    );
  }
}
