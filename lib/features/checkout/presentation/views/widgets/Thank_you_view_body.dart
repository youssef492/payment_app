import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/Total_price.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/order_info_item_widget.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 64,
            left: MediaQuery.of(context).padding.left + 20,
            right: MediaQuery.of(context).padding.right + 20,
          ),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.86,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 66),
                Text(
                  'Thank You!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Your transaction was successful',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.80),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 42),
                ThankYouViewPaymentDetails(),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width * 0.76,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: const Color(0xFFC6C6C6),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TotalPrice(title: 'Total', price: '50'),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 73,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Credit Card\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Mastercard **78 ',
                              style: TextStyle(
                                color: Colors.black.withValues(alpha: 0.70),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/barcode.png'),
                    Container(
                      width: 113,
                      height: 58,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.50,
                            color: const Color(0xFF34A853),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'PAID',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF34A853),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          left: MediaQuery.of(context).size.width * 0.5 - 60,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: const Color(0xFFD9D9D9),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 20,
          left: MediaQuery.of(context).size.width * 0.5 - 50,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xff34A853),
            child: Image.asset('assets/images/rigticon.png'),
          ),
        ),
        Positioned(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          ),
        ),
        Positioned(
          right: 1,
          top: MediaQuery.of(context).size.height * 0.69,
          child: CircleAvatar(radius: 20, backgroundColor: Colors.white),
        ),
        Positioned(
          left: 1,
          top: MediaQuery.of(context).size.height * 0.69,
          child: CircleAvatar(radius: 20, backgroundColor: Colors.white),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.711,
          left: MediaQuery.of(context).size.width * 0.1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.5),
            child: Row(
              children: [
                ...List.generate(
                  MediaQuery.of(context).size.width ~/ 14.2,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xffB8B8B8),
                      ),
                      height: 4,
                      width: 9,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ThankYouViewPaymentDetails extends StatelessWidget {
  const ThankYouViewPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderInfoItem(orderSubtotal: 'Date', shippingCost: '01/24/2023'),
        SizedBox(height: 20),
        OrderInfoItem(orderSubtotal: 'Time', shippingCost: '10:15 AM'),
        SizedBox(height: 20),
        OrderInfoItem(orderSubtotal: 'To', shippingCost: 'Sam Louis'),
        SizedBox(height: 20),
      ],
    );
  }
}
