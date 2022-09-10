import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

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
          height: 440,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/onboarding.png')),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(4)),
        )
      ]),
    );
  }
}
