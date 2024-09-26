import 'package:flutter/material.dart';

import '../../common/dock/dock.dart';
import 'components/components.dart';
import '../../common/titlebar/titlebar.dart';
import 'components/desktop.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomeBackgroun(),
          Positioned.fill(
            child: Column(
              children: [
                HomeScreenTitleBar(),
                DesktopArea(),
                DesktopDock(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
