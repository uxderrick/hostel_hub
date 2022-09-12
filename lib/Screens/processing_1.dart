import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/checkout.dart';
import 'package:hostel_hub/Screens/confirmation.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Processing1 extends StatefulWidget {
  const Processing1({super.key});

  @override
  State<Processing1> createState() => _Processing1State();
}

class _Processing1State extends State<Processing1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Processing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 8,
            ),
            const Text(
                'Your transaction is currently being processed. Please wait for the prompt to authorise the transaction',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff8A8A8A),
                )),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Confirm in ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff1D6DB1),
                        fontWeight: FontWeight.w500)),
                CountdownTimer(),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Confirmation()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff1D6DB1),
                    borderRadius: BorderRadius.circular(4)),
                height: 56,
                child: const Center(
                    child: Text(
                  'I have paid',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Checkout()));
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
          ],
        ),
      ),
    );
  }
}

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Countdown(
      seconds: 20,
      build: (BuildContext context, double time) => Text(
        time.toString(),
        style: const TextStyle(
            fontSize: 16,
            color: Color(0xff1D6DB1),
            fontWeight: FontWeight.w500),
      ),
      interval: const Duration(milliseconds: 100),
    );
  }
}
