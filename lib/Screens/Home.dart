import 'package:flutter/material.dart';

// import 'package:marquee/marquee.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:portfolio_website/Widgets/BgContainer.dart';

import 'package:portfolio_website/Widgets/HireButton.dart';
import 'package:portfolio_website/Widgets/Navigation_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_website/Widgets/mq.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: BgContainer(height: 680, width: 1200, borderRadius: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, right: 65.0, bottom: 50),
                child: Navigation_Bar(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 380,
                    width: 800,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey !",
                            style: ktextstyle.copyWith(fontSize: 48),
                          ),
                          Row(
                            children: [
                              Text(
                                "I am",
                                style: ktextstyle.copyWith(fontSize: 48),
                              ),
                              AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  repeatForever: true,
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      " Tarun Sakthivel",
                                      textStyle: ktextstyle.copyWith(
                                          fontSize: 48,
                                          color: const Color(0xffffead25)),
                                    ),
                                  ]),
                            ],
                          ),
                          Text(
                            "App developer & UI/UX ",
                            style: ktextstyle.copyWith(fontSize: 48),
                          ),
                          Text(
                            "designer",
                            style: ktextstyle.copyWith(fontSize: 48),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "I build apps with innovative design and stable \n one more details will be added soon.",
                              style: ktextstyle.copyWith(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [Image.asset("assets/images/Profilepic.png")],
                    ),
                  )
                ],
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 40), child: HireButton()),
              // Marquee(
              //   text:
              //       'Flutter  Development  |  Mobile Apps  |  UI/UX Design  |  Web Development  |  Innovative Solutions',
              //   // style: const TextStyle(fontSize: 24, color: Colors.black),
              //   // scrollAxis: Axis.horizontal,
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   // blankSpace: 20.0,
              //   // velocity: 100.0, // Speed of the scroll
              //   // startPadding: 10.0,
              //   // accelerationDuration: const Duration(seconds: 1),
              //   // accelerationCurve: Curves.linear,
              //   // decelerationDuration: const Duration(seconds: 1),
              //   // decelerationCurve: Curves.easeOut,
              //   // textDirection:
              //   //     TextDirection.ltr, // Scrolling from right to left
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "About",
                  style: ktextstyle.copyWith(
                      fontSize: 56,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
