import 'package:flutter/material.dart';

// import 'package:marquee/marquee.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:portfolio_website/Widgets/BgContainer.dart';

import 'package:portfolio_website/Widgets/HireButton.dart';
import 'package:portfolio_website/Widgets/Navigation_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_website/Widgets/mq.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double baseWidth = 1400.0;

    // Font & spacing based on screen width
    double navFontSize = (screenWidth * 0.017).clamp(14.0, 24.0);
    double horizontalPadding = (screenWidth * 0.03).clamp(10.0, 50.0);
    double logoPadding = (screenWidth * 0.15).clamp(20.0, 220.0);

    // Define responsive font sizes
    double smallTextSize = screenWidth * 0.018; // ~25 at 1400px width
    double largeTextSize = screenWidth * 0.16; // ~280 at 1400px width
    double headingTextSize = screenWidth * 0.04; // For "About"
    // Left alignment
    double leftTextX = (-0.96 * (screenWidth / baseWidth)).clamp(-1.0, -0.2);

// Right alignment
    double rightTextX = (0.96 * (screenWidth / baseWidth)).clamp(0.2, 0.8);
    double boxHeight = screenWidth * 0.32;
    double topY = -0.9;
    double bottomY = 0.9;
    if (screenWidth < 900) {
      // Adjust for smaller screens
      leftTextX = -1.0;
      rightTextX = 0.9;
      topY = -0.8;
      bottomY = 0.6;
      smallTextSize = screenWidth * 0.02; // Adjusted for smaller screens
      largeTextSize = screenWidth * 0.12; // Adjusted for smaller screens
      headingTextSize = screenWidth * 0.04; // Adjusted for smaller screens
    }
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenWidth < 500 ? 600 : boxHeight * 1,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    screenWidth < 500
                        ? Align(
                            alignment: const Alignment(-6, -0.8),
                            child: Image.asset(
                              "assets/images/ProjectEllipse2.png",
                              width: screenWidth * 0.7, // Make width responsive
                              height: screenWidth *
                                  0.8, // Optional: maintain aspect ratio
                              fit: BoxFit.fitHeight,
                            ))
                        : const Text(""),
                    screenWidth < 500
                        ? Align(
                            alignment: const Alignment(4, 0.8),
                            child: Image.asset(
                              "assets/images/ProjectEllipse3.png",
                              width: screenWidth * 0.7, // Make width responsive
                              height: screenWidth *
                                  0.8, // Optional: maintain aspect ratio
                              fit: BoxFit.fitHeight,
                            ))
                        : const Text(""),
                    Align(
                      alignment: screenWidth < 500
                          ? const Alignment(-0.38, -0.4)
                          : Alignment(leftTextX, topY),
                      child: screenWidth < 500
                          ? Text(
                              "Hey ! I am Tarun Sakthivel \n App developer \n & UI/UX designer",
                              style: ktextstyle.copyWith(
                                  fontSize: screenWidth < 500
                                      ? smallTextSize * 1.6
                                      : smallTextSize),
                            )
                          : Text(
                              "Hey ! I am Tarun Sakthivel \n App developer & UI/UX designer",
                              style: ktextstyle.copyWith(
                                  fontSize: screenWidth < 500
                                      ? smallTextSize * 2
                                      : smallTextSize),
                            ),
                    ),
                    Align(
                      alignment: screenWidth < 500
                          ? const Alignment(0.55, 0)
                          : const Alignment(0, 0),
                      child: Text(
                        'PORTFOLIO',
                        style: TextStyle(
                          fontSize: screenWidth < 500
                              ? largeTextSize * 1.4
                              : largeTextSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Anton',
                        ),
                      ),
                    ),
                    Align(
                      alignment: screenWidth < 500
                          ? const Alignment(0.5, 0.4)
                          : Alignment(rightTextX, bottomY),
                      child: Text(
                        "I build apps and websites with \n innovation and impact.",
                        style: ktextstyle.copyWith(
                            fontSize: screenWidth < 500
                                ? smallTextSize * 1.8
                                : smallTextSize),
                      ),
                    ),
                    Align(
                      alignment: screenWidth < 500
                          ? const Alignment(-16, 0)
                          : const Alignment(-0.01, 0), // Fixed position
                      child: screenWidth < 500
                          ? Image.asset(
                              "assets/images/skeletal.png",
                              width: screenWidth * 0.8, // Make width responsive
                              height: screenWidth *
                                  0.8, // Optional: maintain aspect ratio
                              fit: BoxFit.fitHeight,
                            )
                          : Image.asset(
                              "assets/images/skeletal.png",
                              width: screenWidth < 500
                                  ? screenWidth * 0.4
                                  : screenWidth * 0.25, // Make width responsive
                              height: screenWidth < 500
                                  ? screenWidth * 0.4
                                  : screenWidth *
                                      0.25, // Optional: maintain aspect ratio
                              fit: BoxFit.contain,
                            ),
                    ),
                    screenWidth < 500
                        ? Align(
                            alignment: const Alignment(0.5, 0.7),
                            child: TextButton(
                              onPressed: () async {
                                // Your onPressed logic
                                final uri = Uri.parse(
                                    "mailto:tarunofficial077@gmail.com");
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri,
                                      mode: LaunchMode.externalApplication);
                                } else {
                                  throw 'Could not launch mailto:tarunofficial077@gmail.com';
                                }
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(color: Colors.white),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'To Collab',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 10,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : const Text(""),
                    Align(
                      alignment: screenWidth < 500
                          ? Alignment(0.2, 0.9)
                          : Alignment(0, 1.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_down,
                            color: Color.fromARGB(255, 165, 165, 165),
                            size: 16,
                          ),
                          Text(
                            'Scroll down',
                            style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  screenWidth < 500 ? 16 : smallTextSize * 0.5,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_down,
                            color: const Color.fromARGB(255, 165, 165, 165),
                            size: 16,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
