import 'package:flutter/material.dart';
import 'package:food_rs_app/widgets/splash-button.dart';
import 'package:food_rs_app/widgets/splash-text.dart';
import 'package:food_rs_app/widgets/splash_image.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010E16),
      body: Column(
          children: [SplashImgWidget(), SplashText(), SplashButtonWidget()]),
    );
  }
}
