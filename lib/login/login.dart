import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dudonuts/components/constants.dart';
import 'package:dudonuts/home/home_screen.dart';
import 'package:dudonuts/login/regist.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/donats.png")),
                  shape: BoxShape.circle,
                  color: kPrimaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "WELCOME",
                style:
                    GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Please Login',
                style: GoogleFonts.lato(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 40,
                    ),
                    hintText: "Enter Your UserName",
                    hintStyle: GoogleFonts.lato(color: Colors.black),
                    labelText: "Username",
                    labelStyle: GoogleFonts.lato(color: Colors.black)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 40,
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: GoogleFonts.lato(color: Colors.black),
                    labelText: "Password",
                    labelStyle: GoogleFonts.lato(color: Colors.black)),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 700,
                  height: 50,
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
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                children: [
                  Text(
                    "Don't have account?",
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Regist()));
                      },
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 119, 16, 16)),
                      ))
                ],
              )
            ]),
      ),
    );
  }
}
