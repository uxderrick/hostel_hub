import 'package:flutter/material.dart';

class HostelDetail1 extends StatefulWidget {
  const HostelDetail1({super.key});

  @override
  State<HostelDetail1> createState() => _HostelDetail1State();
}

class _HostelDetail1State extends State<HostelDetail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.cover,
                image: AssetImage('images/hostel detail.png'))),
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
