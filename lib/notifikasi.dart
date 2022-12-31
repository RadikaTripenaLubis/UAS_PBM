import 'package:google_fonts/google_fonts.dart';
import 'package:dudonuts/components/constants.dart';
import 'package:dudonuts/home/home_screen.dart';
import 'package:flutter/material.dart';

class Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/donats.png')),
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Thank you for trusting our shop",
              style: GoogleFonts.lato(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Payment Successful",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 15,
              height: 40,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      kPrimaryColor,
                    ),
                  ),
                  child: const Text("BACK"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
