import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constants/color.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double baseWidth = 1400.0;
    // Define responsive font sizes
    double smallTextSize =
        (screenWidth * 0.011).clamp(8, 40); // ~25 at 1400px width
    double largeTextSize = screenWidth * 0.16; // ~280 at 1400px width
    double headingTextSize = screenWidth * 0.04;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 20.0),
        child: Stack(children: [
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset("assets/images/ProjectEllipse1.png")),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TARUN",
                        style: ktextstyle.copyWith(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            fontSize: largeTextSize * 0.4,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Text(
                          "SAKTHIVEL",
                          style: ktextstyle.copyWith(
                              color: const Color.fromARGB(255, 190, 190, 190),
                              fontSize: largeTextSize * 0.4,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter \n Developer",
                            style: TextStyle(
                              color: Color.fromRGBO(225, 225, 225, 100),
                              fontSize: smallTextSize,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'YourFontFamily',
                            ),
                          ),
                          const SizedBox(width: 50), // Spacing between roles
                          Text(
                            "UI/UX \n Designer",
                            style: TextStyle(
                              color: Color.fromRGBO(225, 225, 225, 100),
                              fontSize: smallTextSize,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'YourFontFamily',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: smallTextSize * 18,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(18, 18, 18, 100),
                      border: Border.all(
                          color:
                              Color.fromRGBO(60, 60, 60, 100)), // subtle border
                      borderRadius:
                          BorderRadius.circular(20), // rounded corners
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Site",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            fontSize: smallTextSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "created by me",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            fontSize: smallTextSize,
                            fontWeight: FontWeight.w300,
                            fontFamily:
                                'YourFontFamily', // use a thin, modern font if desired
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "designed by me",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            fontSize: smallTextSize,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'YourFontFamily',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "powered by flutter 3",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            fontSize: smallTextSize,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'YourFontFamily',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              buildTags([
                'Instagram',
                'LinkedIn',
                'GitHub',
                'Email',
                'Paper'
              ], [
                "assets/images/instagram.png",
                "assets/images/LinkedIn.png",
                "assets/images/GitHub.png",
                "assets/images/mail.png",
                "assets/images/mail.png"
              ], [
                "https://www.instagram.com/__tarun_.s/?utm_source=qr#",
                "https://www.linkedin.com/in/tarun-sakthivel-0b904a254/",
                "https://github.com/tarun-sakthivel",
                "mailto:tarunofficial077@gmail.com",
                "https://ieeexplore.ieee.org/document/10725931"
              ], screenWidth),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildTags(
    List<String> skills,
    List<String> images,
    List<String> urls, // Add URLs here
    double screenWidth,
  ) {
    return Wrap(
      spacing: screenWidth < 900 ? 5.0 : 10.0,
      runSpacing: screenWidth < 900 ? 5.0 : 10.0,
      children: skills.asMap().entries.map((entry) {
        final index = entry.key;
        final skill = entry.value;
        final imageName = images[index];
        final url = urls[index];

        return GestureDetector(
          onTap: () async {
            final uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth < 600 ? 5.0 : 12.0,
              vertical: screenWidth < 600 ? 3.0 : 6.0,
            ),
            decoration: BoxDecoration(
              color: kbackgroundcolor,
              borderRadius: BorderRadius.circular(screenWidth < 600 ? 8 : 10),
              border: Border.all(color: const Color(0xFF595959), width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  imageName,
                  height: screenWidth < 600 ? 8 : 18,
                  width: screenWidth < 600 ? 8 : 18,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: screenWidth < 600 ? 4 : 8),
                Text(
                  skill,
                  style: ktextstyle.copyWith(
                    fontSize: screenWidth < 600 ? screenWidth * 0.02 : null,
                    color: const Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
