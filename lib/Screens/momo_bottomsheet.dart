import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/processing_1.dart';

class MomoBottomSheet extends StatefulWidget {
  const MomoBottomSheet({super.key});

  @override
  State<MomoBottomSheet> createState() => _MomoBottomSheetState();
}

class _MomoBottomSheetState extends State<MomoBottomSheet> {
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
              'Provide Mobile Money Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Enter your mobile money details to complete your payment',
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
                  'Mobile Money Number',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 56,
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: InputBorder.none,
                      filled: true,
                      hintText: 'eg. 054 012 3456',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Mobile Money Network',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField(
              elevation: 0,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: InputBorder.none,
                filled: true,
                hintText: 'Select your MOMO network',
              ),
              items: [
                DropdownMenuItem(
                  value: 'MTN',
                  child: Row(
                    children: const [
                      Image(image: AssetImage('images/mtn.png')),
                      SizedBox(
                        width: 8,
                      ),
                      Text('MTN'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'Vodafone',
                  child: Row(
                    children: const [
                      Image(image: AssetImage('images/voda.png')),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Vodafone'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'Airtel',
                  child: Row(
                    children: const [
                      Image(image: AssetImage('images/airtel.png')),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Airtel'),
                    ],
                  ),
                ),
              ],
              onChanged: (v) {
                setState(() {});
              },
            ),
            const SizedBox(
              height: 24,
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
