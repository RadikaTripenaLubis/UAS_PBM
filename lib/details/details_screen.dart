import 'package:flutter/material.dart';
import 'package:dudonuts/bayar.dart';
import 'package:dudonuts/details/components/image_and_icons.dart';
import 'package:dudonuts/details/components/title_and_price.dart';
import 'package:dudonuts/components/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    required this.donutsImage,
    required this.donutsName,
    required this.price,
  });

  final String donutsImage, donutsName, price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ImageAndIcons(donutsImage: this.donutsImage, size: size),
              TitleAndPrice(donutsName: this.donutsName, price: this.price),
              const SizedBox(height: kDefaultPadding),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bayar(
                                    // ignore: unnecessary_this
                                    donutsImage: this.donutsImage,
                                    // ignore: unnecessary_this
                                    donutsName: this.donutsName,
                                    price: this.price,
                                  )));
                    },
                    child: Container(
                      height: 60,
                      width: size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          color: Color.fromARGB(255, 119, 16, 16)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: const FittedBox(
                            child: Text(
                              'Buy now',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
