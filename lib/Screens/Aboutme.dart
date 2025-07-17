import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800;

    // Responsive values
    double fontSize = (screenWidth * 0.017).clamp(10, 24);
    double textWidth = isSmallScreen ? screenWidth * 0.9 : screenWidth * 0.55;
    double imageSize = (screenWidth * 0.25).clamp(120, 380);
    double ellipseSize = (screenWidth * 0.05).clamp(30, 80);
    double headingTextSize = screenWidth * 0.04; // For "About"
    void _launchResume() async {
      const resumeUrl =
          'https://docs.google.com/document/d/13WmlUKAUFjtz1usSO7cESXifezePx0AbPv8bLrmj8EU/edit?usp=sharing'; // Replace with your actual hosted link
      if (await canLaunchUrl(Uri.parse(resumeUrl))) {
        await launchUrl(Uri.parse(resumeUrl));
      } else {
        throw 'Could not launch $resumeUrl';
      }
    }

    return Stack(
      children: [
        // Top left ellipse
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/Ellipse1.png",
            width: ellipseSize,
            height: ellipseSize,
          ),
        ),

        // Bottom right ellipse
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/images/Ellipse2.png",
            width: ellipseSize,
            height: ellipseSize,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 16 : 40,
            vertical: isSmallScreen ? 20 : 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.1, bottom: 20),
                child: Text(
                  "About Me",
                  style: ktextstyle.copyWith(
                    fontSize: headingTextSize * 1.2,
                    color: const Color.fromARGB(255, 190, 190, 190),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              isSmallScreen
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Image above text in small screen
                        Image.asset(
                          "assets/images/Abtmeimg.png",
                          width:
                              screenWidth < 500 ? imageSize * 2.5 : imageSize,
                          height:
                              screenWidth < 500 ? imageSize * 2.5 : imageSize,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 20),
                        // Image.asset(
                        //   "assets/images/StraightLine.png",
                        //   height: imageSize * 0.3,
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.purple
                              ], // Gradient for border
                            ),
                            borderRadius: BorderRadius.circular(
                                12), // Apply to outer gradient
                          ),
                          child: Container(
                            margin: EdgeInsets.all(
                                1), // Inner container for padding
                            child: TextButton(
                              onPressed: _launchResume,
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                backgroundColor: const Color(0xFF2D2D2D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                shadowColor: Colors.black.withOpacity(0.2),
                                elevation: 5,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.picture_as_pdf,
                                      color: Colors.white, size: 20),
                                  const SizedBox(width: 8),
                                  Text(
                                    "Resume",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            style: ktextstyle.copyWith(
                                fontSize: screenWidth < 500
                                    ? fontSize * 1.3
                                    : fontSize,
                                color: Colors.white),
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
                                      " is complemented by a portfolio of impactful projects like NOVO and ZeroWaste. With a passion for innovation and problem-solving, I deliver high-quality, functional, and visually appealing software. I'm eager to bring my design and development skills to new and exciting challenges.Lets build something that stands out — and works better."),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image
                            Image.asset(
                              "assets/images/Abtmeimg.png",
                              width: imageSize,
                              height: imageSize,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 30),

                            // Line image
                            Image.asset(
                              "assets/images/StraightLine.png",
                              height: imageSize * 0.5,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 30),

                            // Text
                            SizedBox(
                              width: textWidth,
                              child: Text.rich(
                                TextSpan(
                                  style: ktextstyle.copyWith(
                                      fontSize: fontSize, color: Colors.white),
                                  children: const [
                                    TextSpan(text: "As a versatile "),
                                    TextSpan(
                                      text: "Flutter",
                                      style: TextStyle(color: Colors.yellow),
                                    ),
                                    TextSpan(
                                        text: " Android Engineer skilled in "),
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
                                            " is complemented by a portfolio of impactful projects like NOVO and ZeroWaste. With a passion for innovation and problem-solving, I deliver high-quality, functional, and visually appealing software. I'm eager to bring my design and development skills to new and exciting challenges.Lets build something that stands out — and works better."),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.purple
                                ], // Gradient for border
                              ),
                              borderRadius: BorderRadius.circular(
                                  12), // Apply to outer gradient
                            ),
                            child: Container(
                              margin: EdgeInsets.all(
                                  1), // Inner container for padding
                              child: TextButton(
                                onPressed: _launchResume,
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 12),
                                  backgroundColor: const Color(0xFF2D2D2D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  shadowColor: Colors.black.withOpacity(0.2),
                                  elevation: 5,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.picture_as_pdf,
                                        color: Colors.white, size: 20),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Resume",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
