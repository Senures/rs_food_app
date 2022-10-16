import 'package:flutter/material.dart';

class SplashImgWidget extends StatelessWidget {
  const SplashImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/splash_bg.png",
    );
  }
}