import 'package:dudonuts/components/donat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dudonuts/components/constants.dart';
import 'package:dudonuts/login/logout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Logout()));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Logout',
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
        backgroundColor: const Color.fromARGB(255, 253, 167, 207),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding,
              ),
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Hi DONUTS Lovers!',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/donats.png",
                  )
                ],
              ),
            ),
            Stack(children: [
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg"),
                    ],
                  ),
                ),
              ),
            ]),
            const SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Text(
                    "Recomended",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        color: kTextColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: Text(
                    "More",
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        color: kTextColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DonatCard(
                      donutsImage: "assets/images/donat1.png",
                      donutsName: "1 pcs Cookies and Cream",
                      price: "2"),
                  DonatCard(
                      donutsImage: "assets/images/donat2.png",
                      donutsName: "1 pcs Creamy Chocolate'",
                      price: "1"),
                  DonatCard(
                      donutsImage: "assets/images/donat3.png",
                      donutsName: "2 pcs Original'",
                      price: "1"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Text(
                    "Featured",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        color: kTextColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: Text(
                    "More",
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        color: kTextColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DonatCard(
                      donutsImage: "assets/images/donat4.png",
                      donutsName: "1 pcs Meses Seres'",
                      price: "1"),
                  DonatCard(
                      donutsImage: "assets/images/milk.png",
                      donutsName: "1 cup Milk",
                      price: "2"),
                  DonatCard(
                      donutsImage: "assets/images/coffe.png",
                      donutsName: "1 cup Coffe",
                      price: "3"),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
        ),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            ),
          ],
        ),
      ),
    );
  }
}
