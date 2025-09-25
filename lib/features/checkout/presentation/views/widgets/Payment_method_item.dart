import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  PaymentMethodItem({
    super.key,
    required this.image,
    this.onTap,
    required this.isactive,
  });
  String image = 'assets/images/Group 7.png';
  Function()? onTap;
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            child: Image.asset('$image'),
            width: MediaQuery.of(context).size.width * 0.25,
            height: 62,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 5,
                  color: isactive ? const Color(0xFF34A853) : Colors.black54,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              shadows: [
                BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    238,
                    234,
                    234,
                  ).withOpacity(0.5),
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
