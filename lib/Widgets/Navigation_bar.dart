import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/text.dart';

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({super.key});

  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 220, left: 20),
          child: Image.asset(height: 64, "assets/images/TS_Logo.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Home',
                style: ktextstyle.copyWith(fontSize: 24),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'About',
                style: ktextstyle.copyWith(fontSize: 24),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Education',
                style: ktextstyle.copyWith(fontSize: 24),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Skills',
                style: ktextstyle.copyWith(fontSize: 24),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Projects',
                style: ktextstyle.copyWith(fontSize: 24),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10),
          child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Contact',
                    style: ktextstyle.copyWith(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
