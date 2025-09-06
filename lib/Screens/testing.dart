import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class testing extends StatefulWidget {
  const testing({super.key});

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<SliderDrawerState> _sliderDrawerKey =
        GlobalKey<SliderDrawerState>();
    return Scaffold(
      body: SliderDrawer(
        slideDirection: SlideDirection.rightToLeft,
        isDraggable: false,
        key: _sliderDrawerKey,
        appBar: SliderAppBar(
          config: SliderAppBarConfig(
            trailing: Image.asset(
              "assets/images/TS_Logo.png",
              height: 50,
              width: 50,
            ),
            title: Text(
              "Menu",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        sliderOpenSize: 179,
        slider: Container(color: const Color.fromARGB(255, 0, 0, 0)),
        child: Container(color: Colors.black),
      ),
    );
  }
}
