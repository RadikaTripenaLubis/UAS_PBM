// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dudonuts/components/constants.dart';
import 'package:dudonuts/notifikasi.dart';
// ignore: unused_import
import 'package:dudonuts/details/details_screen.dart';

class Bayar extends StatelessWidget {
  final String donutsImage;
  final String donutsName;
  final String price;

  const Bayar(
      {super.key,
      required this.donutsImage,
      required this.donutsName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Payment'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(donutsImage))),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  donutsName,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Text(
                  'Price  \$ $price',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: kTextColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text(
              'Enter your address',
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding, right: kDefaultPadding),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: const Icon(
                        Icons.location_on,
                        size: 30,
                      ),
                      hintText: "Enter Your Province",
                      hintStyle: GoogleFonts.lato(color: Colors.black),
                      labelText: "Province",
                      labelStyle: GoogleFonts.lato(color: Colors.black)),
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
                        Icons.location_searching,
                        size: 30,
                      ),
                      hintText: "Enter Your City",
                      hintStyle: GoogleFonts.lato(color: Colors.black),
                      labelText: "City",
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
                        Icons.nature_outlined,
                        size: 30,
                      ),
                      hintText: "Enter Your Detail Address",
                      hintStyle: GoogleFonts.lato(color: Colors.black),
                      labelText: "Detail Address",
                      labelStyle: GoogleFonts.lato(color: Colors.black)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text(
              'Payment Method',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Container(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifikasi(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Image.asset(
                          'assets/images/cod.png',
                        ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Cash On Delivery',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifikasi(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Image.asset(
                          'assets/images/bni.png',
                          width: 100,
                          height: 150,
                        ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Transfer to 2010631170110',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifikasi(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Image.asset(
                          'assets/images/bri.png',
                          width: 100,
                          height: 150,
                        ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Transfer to RTL2010631170110',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
