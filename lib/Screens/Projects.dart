import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';

class Projectsview extends StatefulWidget {
  const Projectsview({super.key});

  @override
  State<Projectsview> createState() => _ProjectsviewState();
}

class _ProjectsviewState extends State<Projectsview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2500,
      child: Stack(children: [
        Positioned(
            right: 0,
            top: 100,
            child: Image.asset("assets/images/ProjectEllipse1.png")),
        Positioned(
            left: 0,
            top: 700,
            child: Image.asset("assets/images/ProjectEllipse2.png")),
        Positioned(
            right: 0,
            bottom: 120,
            child: Image.asset("assets/images/ProjectEllipse3.png")),
        Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset("assets/images/ProjectEllipse4.png")),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Projects",
                  style: ktextstyle.copyWith(
                      color: Colors.white,
                      fontSize: 56,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Project 1",
                          style: ktextstyle.copyWith(
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.w300),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                height: 25,
                                width: 79,
                                decoration: BoxDecoration(
                                    color: kbackgroundcolor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Color(0XFF595959), width: 1)),
                                child: Center(
                                    child: Text(
                                  "Dart",
                                  style:
                                      ktextstyle.copyWith(color: Colors.white),
                                )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                height: 25,
                                width: 79,
                                decoration: BoxDecoration(
                                    color: kbackgroundcolor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Color(0XFF595959), width: 1)),
                                child: Center(
                                    child: Text(
                                  "Dart",
                                  style:
                                      ktextstyle.copyWith(color: Colors.white),
                                )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                height: 25,
                                width: 79,
                                decoration: BoxDecoration(
                                    color: kbackgroundcolor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Color(0XFF595959), width: 1)),
                                child: Center(
                                    child: Text(
                                  "Dart",
                                  style:
                                      ktextstyle.copyWith(color: Colors.white),
                                )),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            width: 461,
                            height: 140,
                            child: Text(
                              "A fruits and vegetable market app connects local vendors with customers, offering an online platform to browse, order, and purchase fresh produce.It provides features like real-time inventory updates, seasonal offers, and home delivery options, ensuring convenience and accessibility for users.The app also promotes local farming by facilitating direct sales.  ",
                              style: ktextstyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 300, top: 40),
                    child: Container(
                      height: 363,
                      width: 631,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
