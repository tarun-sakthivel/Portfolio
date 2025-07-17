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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: isMobile
              ? SizedBox(
                  width: containerWidth * 1.2,
                  height: containerHeight * 1.2,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: RiveAnimation.asset(
                      "assets/rive/Skillset.riv",
                    ),
                  ),
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
    );
  }
}
