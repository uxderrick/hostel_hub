import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/create_account.dart';

import 'bottom_nav_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Login to your account',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Email Address',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 56,
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    filled: true,
                    hintText: 'eg: johndoe@mail.com',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(height: 8),
              TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xff6E6876)),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'Enter your password',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            alignment: Alignment.centerRight,
            child: const Text(
              'Forgot password',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff60B5FD)),
            ),
          ),
          const Spacer(),
          GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff1D6DB1),
                    borderRadius: BorderRadius.circular(4)),
                height: 58,
                child: const Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const BottomNavBar())));
              }),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            child: Container(
              alignment: const Alignment(0, 0),
              height: 40,
              width: double.infinity,
              child: const Text(
                'Create my new account',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff1D6DB1),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateAccount()));
            },
          ),
          const SizedBox(
            height: 72,
          )
        ]),
      ),
    );
  }
}
