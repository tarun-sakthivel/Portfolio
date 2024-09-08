import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Screens/Aboutme.dart';
import 'package:portfolio_website/Screens/EducationView.dart';
import 'package:portfolio_website/Screens/Home.dart';
import 'package:portfolio_website/Screens/Projects.dart';
import 'package:portfolio_website/Screens/Skills.dart';

class Mainview extends StatefulWidget {
  const Mainview({super.key});

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Homepage(),
            )),
            AboutMe(),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Educationview(),
            ),
            SkillsPage(),
            Projectsview()
          ],
        ),
      ),
    );
  }
}
