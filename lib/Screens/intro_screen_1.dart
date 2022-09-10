import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(children: [
        const SizedBox(
          height: 120,
        ),
        Container(
          margin: const EdgeInsets.all(16),
          height: 400,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/onboarding.png')),
              borderRadius: BorderRadius.circular(4)),
        ),
        const Text(
          'All Your Hostel Needs In One Place',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
