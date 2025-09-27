import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  OrderInfoItem({
    super.key,
    required this.orderSubtotal,
    required this.shippingCost,
  });
  String orderSubtotal;
  String shippingCost;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$orderSubtotal', style: TextStyle(fontSize: 18)),
          Text('\$$shippingCost', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
