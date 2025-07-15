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
                height: boxHeight,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment(leftTextX, topY),
                      child: Text(
                        "Hey ! I am Tarun Sakthivel \n App developer & UI/UX designer",
                        style: ktextstyle.copyWith(fontSize: smallTextSize),
                      ),
                    ),
                    Text(
                      'PORTFOLIO',
                      style: TextStyle(
                        fontSize: largeTextSize,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Align(
                      alignment: Alignment(rightTextX, bottomY),
                      child: Text(
                        "I build apps and websites with \n innovation and impat.",
                        style: ktextstyle.copyWith(fontSize: smallTextSize),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0, 0), // Fixed position
                      child: Image.asset(
                        "assets/images/Me_image.png",
                        width: screenWidth * 0.25, // Make width responsive
                        height: screenWidth *
                            0.25, // Optional: maintain aspect ratio
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.1),
                child: Text(
                  "About Me",
                  style: ktextstyle.copyWith(
                    fontSize: headingTextSize,
                    color: const Color.fromARGB(255, 190, 190, 190),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
