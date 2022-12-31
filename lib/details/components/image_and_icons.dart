import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dudonuts/components/constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
    required this.donutsImage,
  });

  final Size size;
  final String donutsImage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 2),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.9,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage(donutsImage),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
