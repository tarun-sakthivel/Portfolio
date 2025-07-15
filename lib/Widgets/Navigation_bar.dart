import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/text.dart';

class Navigation_Bar extends StatelessWidget {
  const Navigation_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Font & spacing based on screen width
    double navFontSize = (screenWidth * 0.017).clamp(14.0, 24.0);
    double horizontalPadding = (screenWidth * 0.03).clamp(10.0, 50.0);
    double logoPadding = (screenWidth * 0.15).clamp(20.0, 220.0);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: logoPadding, left: 20),
            child: Image.asset(
              "assets/images/TS_Logo.png",
              height: screenWidth < 500 ? 40 : 64,
            ),
          ),
          ...[
            'Home',
            'About',
            'Skills',
            'Projects'
          ].map((item) => Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    item,
                    style: ktextstyle.copyWith(fontSize: navFontSize),
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 190, 190, 190),
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Contact',
                    style: ktextstyle.copyWith(
                      fontSize: navFontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
