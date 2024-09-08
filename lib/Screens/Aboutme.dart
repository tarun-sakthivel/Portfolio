import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/Ellipse1.png"),
            Padding(
                padding: EdgeInsets.only(left: 70, top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Abtmeimg.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Image.asset("assets/images/StraightLine.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        width: 700,
                        height: 275,
                        child: Text.rich(
                          TextSpan(
                            style: ktextstyle.copyWith(
                                fontSize: 24, color: Colors.white),
                            children: const [
                              TextSpan(text: "As a versatile "),
                              TextSpan(
                                text: "Flutter",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              TextSpan(text: " Android Engineer skilled in "),
                              TextSpan(
                                text: "Python",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              TextSpan(text: ", "),
                              TextSpan(
                                text: "Java",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              TextSpan(text: ", and "),
                              TextSpan(
                                text: "Figma",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              TextSpan(
                                  text:
                                      ", I specialize in crafting seamless, "),
                              TextSpan(
                                text: "user-centric",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              TextSpan(
                                  text:
                                      " mobile experiences and designing intuitive apps and websites. My expertise in state management with "),
                              TextSpan(
                                text: "BLoC architecture",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              TextSpan(
                                  text:
                                      " is complemented by a portfolio of impactful projects like NOVO and ZeroWaste. With a passion for innovation and problem-solving, I deliver high-quality, functional, and visually appealing software. I'm eager to bring my design and development skills to new and exciting challenges."),
                            ],
                          ),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 350.0, left: 80),
                      child: Image.asset("assets/images/Ellipse2.png"),
                    )
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
