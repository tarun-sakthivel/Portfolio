import 'package:flutter/material.dart';
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
      duration: Duration(milliseconds: 900),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: MouseRegion(
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
              // Add RepaintBoundary here
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Container(
                    height: 600,
                    width: 1440,
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child: _isHovered
                          ? Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: RiveAnimation.asset(
                                "assets/rive/Skillset.riv",
                                key: ValueKey('riveAnimation'),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: flutter.Image.asset(
                                'assets/images/Heart.png',
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
    );
  }
}
