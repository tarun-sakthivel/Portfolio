import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/text.dart';
import 'package:portfolio_website/Widgets/BgContainer.dart';
import 'package:rive/rive.dart';
import 'package:stepper_list_view/stepper_list_view.dart';

class Educationview extends StatefulWidget {
  const Educationview({super.key});

  @override
  State<Educationview> createState() => _EducationviewState();
}

class _EducationviewState extends State<Educationview> {
  @override
  Widget build(BuildContext context) {
    final _stepperData = [
      StepperItemData(
        id: '1',
        content: {
          'institution': 'NIRMALA MATHA SCHOOL',
          'description': 'Studied there from LKG till 7th grade.',
          'duration': '2008-2017',
          'logo': 'assets/images/nirmala_logo.png',
        },
        avatar: 'assets/images/nirmala_logo.png',
      ),
      StepperItemData(
        id: '2',
        content: {
          'institution': 'S.B.O.A Matriculation Higher Secondary School',
          'description': 'Studied there from 8th grade till 12th grade.',
          'duration': '2017-2022',
          'logo': 'assets/images/sboa_logo.png',
        },
        avatar: 'assets/images/sboa_logo.png',
      ),
      StepperItemData(
        id: '3',
        content: {
          'institution': 'Vellore Institute of Technology - AP',
          'description':
              'Currently pursuing my BTech CSE Core undergraduate here.',
          'duration': '2022-2026',
          'logo': 'assets/images/vit_logo.png',
        },
        avatar: 'assets/images/vit_logo.png',
      ),
      StepperItemData(
        id: '4',
        content: {
          'institution': 'Coming Soon...',
          'description': '',
          'duration': '',
          'logo': '',
        },
        avatar: '',
      ),
    ];

    return Stack(children: [
      BgContainer(height: 680, width: 1200, borderRadius: 20),
      Positioned(
        bottom: 80,
        child: Center(
          child: Container(
            height: 600,
            width: 1300,
            child: Center(
              child: RiveAnimation.asset("assets/rive/Education.riv"),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 1140.0,
        ),
        child: Text(
          "Education",
          style: ktextstyle.copyWith(fontSize: 56, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 690.0, left: 15),
        child: Text("Skills",
            style: ktextstyle.copyWith(fontSize: 56, color: Colors.white)),
      ),
    ]);
  }
}
