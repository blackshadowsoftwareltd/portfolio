import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dock_app.dart';
import 'providers/dock.p.dart';

class DesktopDock extends ConsumerWidget {
  const DesktopDock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dockApps = ref.watch(dockAppsProvider);
    return Container(
      // width: 500,
      height: 60,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: dockApps.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => DesktopDockApp(
          dockApp: dockApps[index],
        ),
      ),
    );
  }
}
