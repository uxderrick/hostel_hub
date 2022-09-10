import 'package:flutter/material.dart';

class HostelDetail2 extends StatefulWidget {
  const HostelDetail2({super.key});

  @override
  State<HostelDetail2> createState() => _HostelDetail2State();
}

class _HostelDetail2State extends State<HostelDetail2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.cover,
                image: AssetImage('images/hostel1.png'))),
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
