// import 'package:flutter/material.dart';
// import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
// import 'package:portfolio_website/Constants/color.dart';
// import 'package:portfolio_website/Constants/text.dart';
// import 'package:portfolio_website/Screens/Aboutme.dart';
// import 'package:portfolio_website/Screens/Home.dart';
// import 'package:portfolio_website/Screens/Projects.dart';
// import 'package:portfolio_website/Screens/Skills.dart';

// import 'ContactPage.dart';

// class Mainview extends StatefulWidget {
//   const Mainview({super.key});

//   @override
//   State<Mainview> createState() => _MainviewState();
// }

// class _MainviewState extends State<Mainview> {
//   final ScrollController _scrollController = ScrollController();

//   BuildContext? homeContext;
//   BuildContext? aboutContext;
//   BuildContext? skillsContext;
//   BuildContext? projectsContext;
//   BuildContext? contactContext;

//   void scrollTo(BuildContext? context) {
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final GlobalKey<SliderDrawerState> _sliderDrawerKey =
//         GlobalKey<SliderDrawerState>();
//     return Scaffold(
//       backgroundColor: kbackgroundcolor,
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: screenWidth * 0.02,
//                 vertical: screenWidth * 0.015,
//               ),
//               child: screenWidth < 500
//                   ? Row(
//                       children: [
//                         Image.asset(
//                           "assets/images/TS_Logo.png",
//                           height: screenWidth * 0.15,
//                         ),
//                         SliderDrawer(
//                           isDraggable: false,
//                           slideDirection: SlideDirection.rightToLeft,
//                           key: _sliderDrawerKey,
//                           appBar: SliderAppBar(
//                             config: SliderAppBarConfig(
//                               title: Text(
//                                 "Menu",
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           sliderOpenSize: 179,
//                           slider: Container(color: Colors.red),
//                           child: Container(color: Colors.amber),
//                         ),
//                       ],
//                     )
//                   : buildNavigationBar(screenWidth),
//             ),

//             // HOME
//             Builder(builder: (context) {
//               homeContext = context;
//               return const Padding(
//                 padding: EdgeInsets.only(left: 60.0),
//                 child: Homepage(),
//               );
//             }),

//             // ABOUT
//             Builder(builder: (context) {
//               aboutContext = context;
//               return const AboutMe();
//             }),

//             // SKILLS
//             Builder(builder: (context) {
//               skillsContext = context;
//               return const SkillsPage();
//             }),

//             // PROJECTS
//             Builder(builder: (context) {
//               projectsContext = context;
//               return const Projectsview();
//             }),
//             Builder(builder: (context) {
//               contactContext = context;
//               return const MyWidget();
//             }),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildNavigationBar(double screenWidth) {
//     final isSmall = screenWidth < 600;
//     final horizontalSpacing = isSmall ? 6.0 : 20.0;

//     return screenWidth < 500
//         ? Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Logo

//               // Navigation Buttons
//               Expanded(
//                 child: Container(
//                   alignment: Alignment.center,
//                   child: Wrap(
//                     spacing: 2,
//                     crossAxisAlignment: WrapCrossAlignment.center,
//                     alignment: WrapAlignment.end,
//                     children: [
//                       navButton(
//                           'Home', () => scrollTo(homeContext), screenWidth),
//                       navButton(
//                           'About', () => scrollTo(aboutContext), screenWidth),
//                       navButton(
//                           'Skills', () => scrollTo(skillsContext), screenWidth),
//                       navButton('Projects', () => scrollTo(projectsContext),
//                           screenWidth),

//                       // Contact Button (Placeholder)
//                       TextButton(
//                         onPressed: () {
//                           // Scroll to footer or show contact modal
//                           scrollTo(contactContext);
//                         },
//                         style: TextButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(horizontal: 4),
//                           minimumSize: Size.zero,
//                           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(
//                               Icons.phone,
//                               size: screenWidth * 0.02,
//                               color: const Color.fromARGB(255, 190, 190, 190),
//                             ),
//                             const SizedBox(width: 6),
//                             Text(
//                               'Contact',
//                               style: ktextstyle.copyWith(
//                                 fontSize: screenWidth * 0.03,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         : Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Logo
//               Image.asset(
//                 "assets/images/TS_Logo.png",
//                 height: screenWidth * 0.04,
//               ),

//               // Navigation Buttons
//               Expanded(
//                 child: Container(
//                   alignment: Alignment.center,
//                   child: Wrap(
//                     spacing: horizontalSpacing,
//                     crossAxisAlignment: WrapCrossAlignment.center,
//                     alignment: WrapAlignment.end,
//                     children: [
//                       navButton(
//                           'Home', () => scrollTo(homeContext), screenWidth),
//                       navButton(
//                           'About', () => scrollTo(aboutContext), screenWidth),
//                       navButton(
//                           'Skills', () => scrollTo(skillsContext), screenWidth),
//                       navButton('Projects', () => scrollTo(projectsContext),
//                           screenWidth),

//                       // Contact Button (Placeholder)
//                       TextButton(
//                         onPressed: () {
//                           // Scroll to footer or show contact modal
//                           scrollTo(contactContext);
//                         },
//                         style: TextButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(horizontal: 4),
//                           minimumSize: Size.zero,
//                           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(
//                               Icons.phone,
//                               size: screenWidth * 0.02,
//                               color: const Color.fromARGB(255, 190, 190, 190),
//                             ),
//                             const SizedBox(width: 6),
//                             Text(
//                               'Contact',
//                               style: ktextstyle.copyWith(
//                                 fontSize: screenWidth * 0.02,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//   }

//   Widget navButton(String label, VoidCallback onPressed, double screenWidth) {
//     return Padding(
//       padding: screenWidth < 500
//           ? const EdgeInsets.symmetric(horizontal: 0.5)
//           : const EdgeInsets.symmetric(horizontal: 12),
//       child: TextButton(
//         onPressed: onPressed,
//         child: Text(
//           label,
//           style: ktextstyle.copyWith(
//             color: const Color.fromARGB(255, 190, 190, 190),
//             fontSize:
//                 screenWidth < 500 ? screenWidth * 0.03 : (screenWidth * 0.02),
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:portfolio_website/Screens/Aboutme.dart';
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
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  String selectedItem = "Home";

  BuildContext? homeContext;
  BuildContext? aboutContext;
  BuildContext? skillsContext;
  BuildContext? projectsContext;
  BuildContext? contactContext;

  final List<String> menuItems = const [
    "Home",
    "About",
    "Skills",
    "Projects",
    "Contact",
  ];

  void scrollTo(BuildContext? context) {
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void onMenuTap(String item) {
    setState(() => selectedItem = item);

    switch (item) {
      case "Home":
        scrollTo(homeContext);
        break;
      case "About":
        scrollTo(aboutContext);
        break;
      case "Skills":
        scrollTo(skillsContext);
        break;
      case "Projects":
        scrollTo(projectsContext);
        break;
      case "Contact":
        scrollTo(contactContext);
        break;
    }

    _sliderDrawerKey.currentState?.closeSlider();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 500;

    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: isMobile ? _buildMobile() : _buildDesktop(screenWidth),
    );
  }

  /// ---------- Mobile (<500) : Slider menu ----------
  Widget _buildMobile() {
    return SliderDrawer(
      backgroundColor: kbackgroundcolor,
      key: _sliderDrawerKey,
      slideDirection: SlideDirection.rightToLeft,
      isDraggable: true,
      appBar: SliderAppBar(
        config: SliderAppBarConfig(
         
          isCupertino: false,
          drawerIconSize: 32,
          drawerIconColor: const Color.fromARGB(255, 223, 223, 223),
          backgroundColor: kbackgroundcolor,
          // left side shows the default hamburger icon that toggles the drawer
          padding: const EdgeInsets.only(left: 20),
          // Your logo in trailing
          trailing: Image.asset(
            "assets/images/TS_Logo.png",
            height: 50,
            width: 50,
          ),
        ),
      ),
      sliderOpenSize: 260,
      slider: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 20, 20, 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Align(
                //   alignment: Alignment.topRight,
                //   child: IconButton(
                //     icon:
                //         const Icon(Icons.close, color: Colors.white, size: 28),
                //     onPressed: () =>
                //         _sliderDrawerKey.currentState?.closeSlider(),
                //   ),
                // ),
                const SizedBox(height: 12),
                ...menuItems.map(
                  (item) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: GestureDetector(
                      onTap: () => onMenuTap(item),
                      child: Text(
                        item,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: selectedItem == item
                              ? Colors.yellow
                              : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Different sections of the website is given above.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
      // IMPORTANT: the scrollable content must be in the SliderDrawer.child
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const SizedBox(height: 20), // small breathing space under app bar
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
            // CONTACT
            Builder(builder: (context) {
              contactContext = context;
              return const MyWidget();
            }),
          ],
        ),
      ),
    );
  }

  /// ---------- Desktop / Tablet : top nav bar ----------
  Widget _buildDesktop(double screenWidth) {
    final isSmall = screenWidth < 600;
    final horizontalSpacing = isSmall ? 6.0 : 20.0;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02,
              vertical: screenWidth * 0.015,
            ),
            child: Row(
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
                        navButton('Skills', () => scrollTo(skillsContext),
                            screenWidth),
                        navButton('Projects', () => scrollTo(projectsContext),
                            screenWidth),
                        TextButton(
                          onPressed: () => scrollTo(contactContext),
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
                                  fontWeight: FontWeight.w600,
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
            ),
          ),

          // Sections
          Builder(builder: (context) {
            homeContext = context;
            return const Padding(
              padding: EdgeInsets.only(left: 60.0),
              child: Homepage(),
            );
          }),
          Builder(builder: (context) {
            aboutContext = context;
            return const AboutMe();
          }),
          Builder(builder: (context) {
            skillsContext = context;
            return const SkillsPage();
          }),
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
