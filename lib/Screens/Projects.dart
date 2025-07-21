import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:url_launcher/url_launcher.dart';

class Projectsview extends StatefulWidget {
  const Projectsview({super.key});

  @override
  State<Projectsview> createState() => _ProjectsviewState();
}

class _ProjectsviewState extends State<Projectsview> {
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
      child: SizedBox(
        height: screenWidth < 600
            ? 2800
            : 2500, // Adjust the height as per content requirements
        child: Stack(
          children: [
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Text(
                      "Projects",
                      style: ktextstyle.copyWith(
                          color: const Color.fromARGB(255, 190, 190, 190),
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  screenWidth < 500
                      ? Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 143, 143, 143),
                            borderRadius: BorderRadius.circular(
                                15), // Outer border radius
                          ),
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: kbackgroundcolor,
                              borderRadius: BorderRadius.circular(
                                  15), // Inner border radius
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Project Description Column

                                  Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        child: Center(
                                            child: Image.asset(
                                          "assets/images/Project1.png", // Placeholder for image
                                          fit: BoxFit.cover,
                                        )),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "FamCare",
                                    style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: headingTextSize,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags(
                                      ['Flutter', 'Dart', 'Firebase', 'Figma'],
                                      screenWidth),
                                  const SizedBox(height: 20),

                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "I built this app to help track my family member's' medicine intake and send reminders. It shows which medicines were missed day by day in a monthly calendar view. Users can upload prescriptions or files to access them anytime, anywhere. It's made for families—to stay prepared during emergencies or while traveling.",
                                      style: ktextstyle.copyWith(
                                          color: const Color.fromARGB(
                                              255, 190, 190, 190),
                                          fontSize: smallTextSize * 1.3,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  // Project Image Container
                                ],
                              ),
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Project Description Column
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "FamCare",
                                    style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: headingTextSize,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags(
                                      ['Flutter', 'Dart', 'Firebase', 'Figma'],
                                      screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 140,
                                    child: Text(
                                      "I built this app to help track my family member's' medicine intake and send reminders. It shows which medicines were missed day by day in a monthly calendar view. Users can upload prescriptions or files to access them anytime, anywhere. It's made for families—to stay prepared during emergencies or while traveling.",
                                      style: ktextstyle.copyWith(
                                          color: const Color.fromARGB(
                                              255, 190, 190, 190),
                                          fontSize: smallTextSize,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Project Image Container
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Container(
                                  height: 363,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/images/Project1.png", // Placeholder for image
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(
                      height: screenWidth < 600
                          ? 20
                          : 80), // Added spacing for better layout
                  screenWidth < 500
                      ? Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 143, 143, 143),
                            borderRadius: BorderRadius.circular(
                                15), // Outer border radius
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: kbackgroundcolor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Project Description Column
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/project2.png", // Placeholder for image
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                  Text(
                                    "Zero Waste",
                                    style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: headingTextSize,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags(
                                      ['Flutter', 'Dart', 'Firebase', 'UI/UX'],
                                      screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "Zero Waste Heroes is a community-driven app tackling both food waste and hunger by connecting surplus food donors with those in need. It turns edible food destined for landfills into life-saving meals, fostering sustainability and compassion.It helps reduce food waste and feeds the hungry using real-time updates. Join the mission for a greener, nourished future.",
                                      style: ktextstyle.copyWith(
                                          color: const Color.fromARGB(
                                              255, 190, 190, 190),
                                          fontSize: smallTextSize * 1.3,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  // Project Image Container
                                ],
                              ),
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Project Description Column
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40.0),
                                child: Container(
                                  height: screenWidth < 600 ? 150 : 363,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/images/project2.png", // Placeholder for image
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Zero Waste",
                                    style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: headingTextSize,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags(
                                      ['Flutter', 'Dart', 'Firebase', 'UI/UX'],
                                      screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 140,
                                    child: Text(
                                      "Zero Waste Heroes is a community-driven app tackling both food waste and hunger by connecting surplus food donors with those in need. It turns edible food destined for landfills into life-saving meals, fostering sustainability and compassion.It helps reduce food waste and feeds the hungry using real-time updates. Join the mission for a greener, nourished future.",
                                      style: ktextstyle.copyWith(
                                          color: const Color.fromARGB(
                                              255, 190, 190, 190),
                                          fontSize: smallTextSize,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Project Image Container
                          ],
                        ),
                  SizedBox(
                      height: screenWidth < 600
                          ? 5
                          : 80), // Added spacing for better layout
                  screenWidth < 500
                      ? Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 143, 143, 143),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: kbackgroundcolor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          "assets/images/Project4.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "FarmAid",
                                    style: ktextstyle.copyWith(
                                      color: const Color.fromARGB(
                                          255, 190, 190, 190),
                                      fontSize: headingTextSize,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags([
                                    'Flutter',
                                    'Dart',
                                    'Firebase',
                                    'REST API',
                                    'UI/UX',
                                    'Machine Learning'
                                  ], screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "In rural areas, many plants and animals were dying due to unidentified diseases. To address this, we developed FarmAid — an app where farmers can upload images of affected crops or animals to receive instant diagnostic reports with risk ratings (1–10) in visual format. The app supports local languages for accessibility and features a community page for reporting outbreaks like disease spread or pest attacks. It also helps locate nearby veterinarians for timely assistance. We used machine learning for classifications.",
                                      style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: smallTextSize * 1.3,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Project Description Column
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "FarmAid",
                                    style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: headingTextSize,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags([
                                    'Flutter',
                                    'Dart',
                                    'Firebase',
                                    'REST API',
                                    'UI/UX',
                                    'Machine Learning'
                                  ], screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 200,
                                    child: Text(
                                      "In rural areas, many plants and animals were dying due to unidentified diseases. To address this, we developed FarmAid — an app where farmers can upload images of affected crops or animals to receive instant diagnostic reports with risk ratings (1–10) in visual format. The app supports local languages for accessibility and features a community page for reporting outbreaks like disease spread or pest attacks. It also helps locate nearby veterinarians for timely assistance.We used machine learning for classifications.",
                                      style: ktextstyle.copyWith(
                                          color: const Color.fromARGB(
                                              255, 190, 190, 190),
                                          fontSize: smallTextSize,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Project Image Container
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Container(
                                  height: screenWidth < 600 ? 150 : 363,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/Project4.png", // Placeholder for image
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                  const SizedBox(height: 40), // Added spacing for better layout
                  screenWidth < 600
                      ? Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 143, 143, 143),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: kbackgroundcolor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          "assets/images/project5.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Novo Meeting Summarizer",
                                    style: ktextstyle.copyWith(
                                      color: const Color.fromARGB(
                                          255, 190, 190, 190),
                                      fontSize: headingTextSize,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags([
                                    'Flutter',
                                    'Dart',
                                    'Firebase',
                                    'Google Cloud',
                                    'Machine Learning'
                                  ], screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "After COVID, students struggled to manage notes and learning during online classes. To solve this, we developed NOVO — an AI-integrated student meeting app tailored for schools. It converts teachers' speech to text and combines it with reference material (uploaded or AI-fed) to generate structured notes automatically after each session. This helps students focus better in class without the stress of manual note-taking.",
                                      style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: smallTextSize * 1.3,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Project Description Column
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 363,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/images/project5.png", // Placeholder for image
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                                width: 40), // Added spacing for better layout
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Novo Meeting Sumarizer",
                                    style: ktextstyle.copyWith(
                                        color: const Color.fromARGB(
                                            255, 190, 190, 190),
                                        fontSize: headingTextSize,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(height: 20),
                                  buildSkillTags([
                                    'Flutter',
                                    'Dart',
                                    'Firebase',
                                    'Google Cloud',
                                    'Machine Learning'
                                  ], screenWidth),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 140,
                                    child: Text(
                                      "After COVID, students struggled to manage notes and learning during online classes. To solve this, we developed NOVO — an AI-integrated student meeting app tailored for schools. It converts teachers' speech to text and combines it with reference material (uploaded or AI-fed) to generate structured notes automatically after each session. This helps students focus better in class without the stress of manual note-taking.",
                                      style: ktextstyle.copyWith(
                                          color: const Color.fromARGB(
                                              255, 190, 190, 190),
                                          fontSize: smallTextSize,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Project Image Container
                          ],
                        ),
                  SizedBox(height: 80), // dded spacing for better layout
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build skill tags dynamically
  Widget buildSkillTags(List<String> skills, double screenwidth) {
    if (screenwidth < 600) {
      return Wrap(
        spacing: 5.0, // space between tags horizontally
        runSpacing: 5.0, // space between lines
        children: skills.map((skill) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
            decoration: BoxDecoration(
              color: kbackgroundcolor,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xFF595959), width: 1),
            ),
            child: Text(
              skill,
              style: ktextstyle.copyWith(
                  color: const Color.fromARGB(255, 190, 190, 190),
                  fontSize: screenwidth * 0.0125,
                  fontWeight: FontWeight.w300),
            ),
          );
        }).toList(),
      );
    } else
      return Wrap(
        spacing: 10.0, // space between tags horizontally
        runSpacing: 10.0, // space between lines
        children: skills.map((skill) {
          return Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: kbackgroundcolor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFF595959), width: 1),
            ),
            child: Text(
              skill,
              style: ktextstyle.copyWith(
                  color: const Color.fromARGB(255, 190, 190, 190)),
            ),
          );
        }).toList(),
      );
  }
}
