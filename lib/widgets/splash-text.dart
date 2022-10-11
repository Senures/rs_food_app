import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashText extends StatelessWidget {
  const SplashText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: MediaQuery.of(context).size.width,
      //color: Colors.red,
      child: Text(
        "Lorem ipsum\ndolor sit amet,\nconsectetur\nadipiscing elit.",
        style: GoogleFonts.inriaSerif(
          textStyle: const TextStyle(
              color: Colors.white,
              letterSpacing: .5,
              fontWeight: FontWeight.bold,
              fontSize: 38),
        ),
      ),
    );
  }
}
