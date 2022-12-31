import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dudonuts/components/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dudonuts/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/donats.png',
              width: 150,
              height: 150,
            ),
            Text(
              'DuDONUTS',
              style: GoogleFonts.gfsDidot(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
