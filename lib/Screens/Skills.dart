import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart' show ktextstyle;
import 'package:rive/rive.dart';
import 'package:flutter/widgets.dart' as flutter;

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final bool isMobile = screenWidth < 500;

    final double containerWidth = (screenWidth * 0.9).clamp(300.0, 1440.0);
    final double containerHeight = (containerWidth * 0.4).clamp(200.0, 600.0);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.1, bottom: 20),
                child: Text(
                  "Skills",
                  style: ktextstyle.copyWith(
                    fontSize: screenWidth * 0.08 < 32
                        ? 32
                        : screenWidth * 0.08 > 64
                            ? 64
                            : screenWidth * 0.08,
                    color: const Color.fromARGB(255, 190, 190, 190),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: isMobile
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Languages known
                      const Text(
                        'Programming Languages',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 220, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                          width: containerWidth,
                          height: containerHeight * 0.7,
                          margin:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(12),
                            gradient: const flutter.LinearGradient(
                              colors: [
                                Color.fromARGB(255, 0, 38, 70),
                                Color.fromARGB(255, 251, 228, 255)
                              ], // Gradient for border
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              color: kbackgroundcolor,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    flutter.Image.asset(
                                      "assets/images/java.png",
                                      height: containerHeight * 0.3,
                                    ),
                                    flutter.Image.asset(
                                      "assets/images/python.png",
                                      height: containerHeight * 0.3,
                                    ),
                                    flutter.Image.asset(
                                      "assets/images/dart.png",
                                      height: containerHeight * 0.3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                      // backend
                      const Text(
                        'Backend Technologies',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 220, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                          width: containerWidth,
                          height: containerHeight * 0.7,
                          margin:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(12),
                            gradient: const flutter.LinearGradient(
                              colors: [
                                Color.fromARGB(255, 0, 38, 70),
                                Color.fromARGB(255, 251, 228, 255)
                              ], // Gradient for border
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              color: kbackgroundcolor,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          flutter.Image.asset(
                                              "assets/images/restapi.png"),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: flutter.Image.asset(
                                              "assets/images/graphql.png",
                                              height: containerHeight * 0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      flutter.Image.asset(
                                          "assets/images/fastapi.png"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                      // tools
                      const Text(
                        'Designing Tools',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 220, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                          width: containerWidth,
                          height: containerHeight * 0.7,
                          margin:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(12),
                            gradient: const flutter.LinearGradient(
                              colors: [
                                Color.fromARGB(255, 0, 38, 70),
                                Color.fromARGB(255, 251, 228, 255)
                              ], // Gradient for border
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              color: kbackgroundcolor,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    flutter.Image.asset(
                                        "assets/images/figma.png"),
                                    flutter.Image.asset(
                                        "assets/images/adobe.png"),
                                  ],
                                ),
                              ),
                            ),
                          )),
                      // databases
                      const Text(
                        'Databases',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 220, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),

                      Container(
                          width: containerWidth,
                          height: containerHeight * 1.15,
                          margin:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(12),
                            gradient: const flutter.LinearGradient(
                              colors: [
                                Color.fromARGB(255, 0, 38, 70),
                                Color.fromARGB(255, 251, 228, 255)
                              ], // Gradient for border
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              color: kbackgroundcolor,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        flutter.Image.asset(
                                          "assets/images/firebase.png",
                                          height: containerHeight * 0.3,
                                        ),
                                        flutter.Image.asset(
                                          "assets/images/postgres.png",
                                          height: containerHeight * 0.3,
                                        ),
                                        flutter.Image.asset(
                                          "assets/images/mysql.png",
                                          height: containerHeight * 0.3,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        flutter.Image.asset(
                                            "assets/images/mongo.png"),
                                        flutter.Image.asset(
                                          "assets/images/supabase.png",
                                          height: containerHeight * 0.25,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                      //platforms
                      const Text(
                        'Others',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 220, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                          width: containerWidth,
                          height: containerHeight * 0.7,
                          margin:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(12),
                            gradient: const flutter.LinearGradient(
                              colors: [
                                Color.fromARGB(255, 0, 38, 70),
                                Color.fromARGB(255, 251, 228, 255)
                              ], // Gradient for border
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Container(
                              color: kbackgroundcolor,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    flutter.Image.asset(
                                      "assets/images/VSCODE.png",
                                      height: containerHeight * 0.3,
                                    ),
                                    flutter.Image.asset(
                                      "assets/images/android_studio.png",
                                      height: containerHeight * 0.3,
                                    ),
                                    flutter.Image.asset(
                                      "assets/images/bloc.png",
                                      height: containerHeight * 0.3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  )
                : MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        _isHovered = true;
                      });
                      _controller.forward();
                    },
                    onExit: (_) {
                      setState(() {
                        _isHovered = false;
                      });
                      _controller.reverse();
                    },
                    child: RepaintBoundary(
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return SizedBox(
                            width: containerWidth,
                            height: containerHeight,
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              child: _isHovered
                                  ? const Padding(
                                      padding: EdgeInsets.only(left: 60.0),
                                      child: RiveAnimation.asset(
                                        "assets/rive/Skillset.riv",
                                        key: ValueKey('riveAnimation'),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: flutter.Image.asset(
                                        'assets/images/Heart.png',
                                        height: containerHeight * 0.5,
                                        key: const ValueKey('staticImage'),
                                      ),
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
