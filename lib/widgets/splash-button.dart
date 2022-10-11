import 'package:flutter/material.dart';


class SplashButtonWidget extends StatelessWidget {
  const SplashButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
          /*   Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const HomeScreen(),
              ),
            ); */
          },
          child: Container(
            alignment: Alignment.center,
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 0.2, color: const Color(0xffF5F5F5))),
            child: const Text(
              "Login",
              style: TextStyle(color: Color(0xffF5F5F5), fontSize: 29.0),
            ),
          ),
        ),
        Column(
          children: const [
            Text(
              "Don’t have an account? ",
              style: TextStyle(color: Color(0xff375268), fontSize: 14.0),
            ),
            Text(
              "Create account",
              style: TextStyle(color: Color(0xffD9D9D9), fontSize: 14.0),
            )
          ],
        ),
      ],
    );
  }
}