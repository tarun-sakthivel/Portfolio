import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:portfolio_website/Screens/Aboutme.dart';
import 'package:portfolio_website/Screens/EducationView.dart';
import 'package:portfolio_website/Screens/Home.dart';
import 'package:portfolio_website/Screens/Projects.dart';
import 'package:portfolio_website/Screens/Skills.dart';

import 'ContactPage.dart';

class Mainview extends StatefulWidget {
  const Mainview({super.key});

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {
  final ScrollController _scrollController = ScrollController();

  BuildContext? homeContext;
  BuildContext? aboutContext;
  BuildContext? skillsContext;
  BuildContext? projectsContext;
  BuildContext? contactContext;

  void scrollTo(BuildContext? context) {
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
                vertical: screenWidth * 0.015,
              ),
              child: buildNavigationBar(screenWidth),
            ),

            // HOME
            Builder(builder: (context) {
              homeContext = context;
              return const Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Homepage(),
              );
            }),

            // ABOUT
            Builder(builder: (context) {
              aboutContext = context;
              return const AboutMe();
            }),

            // SKILLS
            Builder(builder: (context) {
              skillsContext = context;
              return const SkillsPage();
            }),

            // PROJECTS
            Builder(builder: (context) {
              projectsContext = context;
              return const Projectsview();
            }),
            Builder(builder: (context) {
              contactContext = context;
              return const MyWidget();
            }),
          ],
        ),
      ),
    );
  }

  Widget buildNavigationBar(double screenWidth) {
    final isSmall = screenWidth < 600;
    final fontSize = isSmall ? 12.0 : 16.0;
    final iconSize = isSmall ? 16.0 : 20.0;
    final logoHeight = isSmall ? 28.0 : 50.0;
    final horizontalSpacing = isSmall ? 6.0 : 20.0;

    return screenWidth < 500
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                "assets/images/TS_Logo.png",
                height: screenWidth * 0.08,
              ),

              // Navigation Buttons
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 2,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.end,
                    children: [
                      navButton(
                          'Home', () => scrollTo(homeContext), screenWidth),
                      navButton(
                          'About', () => scrollTo(aboutContext), screenWidth),
                      navButton(
                          'Skills', () => scrollTo(skillsContext), screenWidth),
                      navButton('Projects', () => scrollTo(projectsContext),
                          screenWidth),

                      // Contact Button (Placeholder)
                      TextButton(
                        onPressed: () {
                          // Scroll to footer or show contact modal
                          scrollTo(contactContext);
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.phone,
                              size: screenWidth * 0.02,
                              color: const Color.fromARGB(255, 190, 190, 190),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              'Contact',
                              style: ktextstyle.copyWith(
                                fontSize: screenWidth * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                "assets/images/TS_Logo.png",
                height: screenWidth * 0.04,
              ),

              // Navigation Buttons
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: horizontalSpacing,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.end,
                    children: [
                      navButton(
                          'Home', () => scrollTo(homeContext), screenWidth),
                      navButton(
                          'About', () => scrollTo(aboutContext), screenWidth),
                      navButton(
                          'Skills', () => scrollTo(skillsContext), screenWidth),
                      navButton('Projects', () => scrollTo(projectsContext),
                          screenWidth),

                      // Contact Button (Placeholder)
                      TextButton(
                        onPressed: () {
                          // Scroll to footer or show contact modal
                          scrollTo(contactContext);
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.phone,
                              size: screenWidth * 0.02,
                              color: const Color.fromARGB(255, 190, 190, 190),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              'Contact',
                              style: ktextstyle.copyWith(
                                fontSize: screenWidth * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }

  Widget navButton(String label, VoidCallback onPressed, double screenWidth) {
    return Padding(
      padding: screenWidth < 500
          ? const EdgeInsets.symmetric(horizontal: 0.5)
          : const EdgeInsets.symmetric(horizontal: 12),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: ktextstyle.copyWith(
            color: const Color.fromARGB(255, 190, 190, 190),
            fontSize:
                screenWidth < 500 ? screenWidth * 0.03 : (screenWidth * 0.02),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
