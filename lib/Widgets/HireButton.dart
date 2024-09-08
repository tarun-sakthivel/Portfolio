import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants/color.dart';
import 'package:portfolio_website/Constants/text.dart';

class HireButton extends StatefulWidget {
  const HireButton({super.key});

  @override
  State<HireButton> createState() => _HireButtonState();
}

class _HireButtonState extends State<HireButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xfffc4ffd4),
            Color(0xfffbcedff)
          ], // Your gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(4), // Sets the gradient border thickness to 4
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kbackgroundcolor,
          minimumSize: const Size(170, 50),
          maximumSize: const Size(178, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {
          // Send mail logic here
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Center the content
          children: [
            Text(
              "Hire Me",
              textAlign: TextAlign.center,
              style: ktextstyle.copyWith(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(
              width: 6,
            ),
            const Icon(
              Icons.arrow_right_alt_rounded,
              color: Colors.white,
              size: 35,
            )
            // Spacing between text and image
            // Image.asset(  color: Colors.white, "assets/icons/Arrow.png")
          ],
        ),
      ),
    );
  }
}
