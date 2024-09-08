import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';

class BgContainer extends StatefulWidget {
  double height;
  double width;
  double borderRadius;
  BgContainer(
      {required this.height,
      required this.width,
      required this.borderRadius,
      super.key});

  @override
  State<BgContainer> createState() => _BgContainerState();
}

class _BgContainerState extends State<BgContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height + 55,
      width: widget.width + 200,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Center(
              child: Container(
                width: widget.width -
                    75, // Adjust the width as per your requirement
                height:
                    widget.height, // Adjust the height as per your requirement
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
              top: 30,
              left: 850,
              child: Container(
                height: 300,
                width: 400,
                color: const Color.fromARGB(255, 255, 255, 255),
              )),
          Positioned(
              bottom: 40,
              left: 160,
              child: Container(
                height: 300,
                width: 400,
                color: const Color.fromARGB(255, 255, 255, 255),
              )),
          Positioned(
            left: 200,
            top: 55,
            child: Center(
              child: Container(
                width: widget.width, // Adjust the width as per your requirement
                height:
                    widget.height, // Adjust the height as per your requirement
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
              left: 1125,
              child: Container(
                height: 55,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: kbackgroundcolor),
              )),
          Positioned(
              bottom: 0,
              left: 40,
              child: Container(
                height: 55,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kbackgroundcolor),
              ))
        ],
      ),
    );
  }
}
