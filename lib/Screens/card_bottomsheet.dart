import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostel_hub/Screens/processing_1.dart';

class CardBottomSheet extends StatefulWidget {
  const CardBottomSheet({super.key});

  @override
  State<CardBottomSheet> createState() => _CardBottomSheetState();
}

class _CardBottomSheetState extends State<CardBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7 * MediaQuery.of(context).size.height / 10,

      //start of modal

      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 4,
                width: 48,
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Provide Bank Card Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Enter your bank card details to complete your payment',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8A8A8A)),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Card Number',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(19),
                      FilteringTextInputFormatter.digitsOnly,
                      CardNumberFormatter()
                    ],
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: SizedBox(
                        width: 84,
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 16,
                            ),
                            Image(
                                width: 24,
                                image: AssetImage('images/visa.png')),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                                width: 24,
                                image: AssetImage('images/mastercard.png')),
                          ],
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(20),
                      border: InputBorder.none,
                      filled: true,
                      hintText: 'eg. 1234 5678 9012 3456',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Expiry Date',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 56,
                      width: 172,
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(5),
                          FilteringTextInputFormatter.digitsOnly,
                          CardDateFormatter()
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: InputBorder.none,
                          filled: true,
                          hintText: 'MM/YY',
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CVV',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 56,
                      width: 172,
                      child: TextFormField(
                        obscureText: true,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(4),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: InputBorder.none,
                          filled: true,
                          hintText: 'CVV',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Processing1()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff1D6DB1),
                    borderRadius: BorderRadius.circular(4)),
                height: 56,
                child: const Center(
                    child: Text(
                  'Pay GHS 400',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff1D6DB1)),
                    borderRadius: BorderRadius.circular(4)),
                height: 56,
                child: const Center(
                    child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 16, color: Color(0xff1D6DB1)),
                )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var inputText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

class CardDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var inputText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 2 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write('/');
      }
    }

    var string = bufferString.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
