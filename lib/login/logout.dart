import 'package:flutter/material.dart';
import 'package:dudonuts/components/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dudonuts/home/home_screen.dart';
import 'package:dudonuts/login/login.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

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
              "Logout",
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
              "Are you sure?",
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
              height: kDefaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
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
                          Colors.red,
                        ),
                      ),
                      child: const Text("BACK"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                SizedBox(
                  width: 100,
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
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          kPrimaryColor,
                        ),
                      ),
                      child: const Text("YES"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
