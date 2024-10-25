import 'package:flutter/material.dart';

import '../../../utils/constants/path.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        AssetsImagesPath.macosMontereyWwdc,
        fit: BoxFit.cover,
      ),
    );
  }
}
