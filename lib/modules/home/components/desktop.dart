import 'package:flutter/material.dart';

import '../../../common/window/window.dart';
import '../../../utils/enums/enum.dart';

class DesktopArea extends StatelessWidget {
  const DesktopArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          DesktopWindow(
            onClose: () {},
            onMinimize: () {},
            ptype: WindowPositionType.custom,
            child: const SizedBox(
              width: double.maxFinite,
              child: ColoredBox(
                color: Colors.white,
                child: Text(
                  'Desktop Area',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
