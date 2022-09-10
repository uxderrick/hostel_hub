import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/create_account.dart';
import 'package:hostel_hub/Screens/intro_screen_1.dart';
import 'package:hostel_hub/Screens/intro_screen_2.dart';
import 'package:hostel_hub/Screens/intro_screen_3.dart';
import 'package:hostel_hub/Screens/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  //controller
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              alignment: const Alignment(0, -0.88),
              child: const Image(
                image: AssetImage('images/hostel.jpeg'),
                height: 80,
              )),
          //screens
          PageView(
            controller: _controller,
            children: const [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),

          //dot indicator
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: const Alignment(0, 0.75),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 550,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: const Color(0xff1D6DB1).withOpacity(0.4),
                        activeDotColor: const Color(0xff1D6DB1),
                        dotHeight: 4),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff1D6DB1),
                          borderRadius: BorderRadius.circular(4)),
                      height: 58,
                      child: const Center(
                          child: Text(
                        'Create my new account',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccount()));
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Container(
                      alignment: const Alignment(0, 0),
                      height: 40,
                      width: double.infinity,
                      child: const Text(
                        'I have an account already',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1D6DB1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
