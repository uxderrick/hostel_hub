import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/momo_bottomsheet.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'card_bottomsheet.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: GestureDetector(
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        title: const Text('Checkout'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 168,
            width: double.infinity,
            color: const Color(0xffeeeeee),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Amount Due',
                  style: TextStyle(color: Color(0xff8a8a8a)),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'GHS',
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text('4,000',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Blue Block'),
                    SizedBox(
                      width: 4,
                    ),
                    Text('|'),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Room No. B-011'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Select payment method',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => showMaterialModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        bounce: true,
                        context: context,
                        builder: (context) => const MomoBottomSheet(),
                      ),
                      child: Container(
                        color: Colors.transparent,
                        height: 32,
                        child: Row(
                          children: [
                            const Text('Mobile Money Payment'),
                            const Spacer(),
                            Row(
                              children: const [
                                Image(
                                  image: AssetImage('images/mtn.png'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Image(
                                  image: AssetImage('images/airtel.png'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Image(
                                  image: AssetImage('images/voda.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () => showMaterialModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        bounce: true,
                        context: context,
                        builder: (context) => const CardBottomSheet(),
                      ),
                      child: Container(
                        height: 24,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            const Text('Bank Card'),
                            const Spacer(),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 8,
                                ),
                                Image(
                                  image: AssetImage('images/visa.png'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Image(
                                  image: AssetImage('images/mastercard.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
