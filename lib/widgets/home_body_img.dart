import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBodyImg extends StatelessWidget {
  const HomeBodyImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/homeb_img.png")),
                const Positioned(
                  top: 20.0,
                  left: 40.0,
                  child: Text(
                    "Get Special Discount",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: Color(0xff9B9B9B)),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 40.0,
                  child: Text(
                    "up to 75%",
                    style: GoogleFonts.inriaSerif(
                      textStyle: const TextStyle(
                          fontSize: 33.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: .5),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20.0,
                    left: 40.0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 120.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Colors.white),
                      child: const Text(
                        "Claim Voucher",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ))
              ],
            ),
          );
  }
}