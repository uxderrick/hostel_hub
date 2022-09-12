import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/bottom_nav_bar.dart';
import 'package:hostel_hub/Screens/checkout.dart';
import 'package:hostel_hub/Screens/home.dart';
import 'package:styled_text/styled_text.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                height: 80,
                fit: BoxFit.cover,
                image: AssetImage('images/confirmation.png')),
            const SizedBox(height: 24),
            const Text('Processing',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1E9323))),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 296,
              child: StyledText(
                  text:
                      'We have received payment of <bold>GHS 4,000.00</bold> for <bold>Room No B-011</bold>',
                  tags: {
                    'bold': StyledTextTag(
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black))
                  },
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff8A8A8A),
                  )),
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                final snackBar = SnackBar(
                  backgroundColor: Colors.black,
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                      textColor: Colors.amber,
                      label: 'OKAY',
                      onPressed: () {
                        //add code here later
                      }),
                  content: const Text('Downloading Confirmation Letter'),
                );

                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff1D6DB1),
                    borderRadius: BorderRadius.circular(4)),
                height: 56,
                child: const Center(
                    child: Text(
                  'Download Confirmation Letter (PDF)',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavBar()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff1D6DB1)),
                    borderRadius: BorderRadius.circular(4)),
                height: 56,
                child: const Center(
                    child: Text(
                  'Go Home',
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

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
