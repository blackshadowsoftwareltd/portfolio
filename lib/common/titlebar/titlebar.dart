import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions/context.dart';
import 'leading.dart';
import 'trailing.dart';

class HomeScreenTitleBar extends StatelessWidget {
  const HomeScreenTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: context.screenWidth,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.white.withOpacity(0.03), // Add semi-transparent color to simulate frosted glass
                ),
              ),
            ),
          ),
          const Positioned.fill(
              child: Row(
            children: [
              TitleBarLeadings(),
              TitleBarTrailings(),
            ],
          )),
        ],
      ),
    );
  }
}
