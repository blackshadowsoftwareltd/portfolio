import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/common/dock/providers/dock.p.dart';
import 'package:portfolio/common/dock/models/dock.dart';
import 'package:portfolio/modules/home/provider/window.dart';

class DesktopDockApp extends ConsumerWidget {
  const DesktopDockApp({super.key, required this.dockApp});
  final DockApp dockApp;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(dockAppsProvider);
    final notifier = ref.read(dockAppsProvider.notifier);
    final selected = notifier.onHovered == dockApp;
    return MouseRegion(
      onEnter: (_) => notifier.hoverStart(dockApp),
      onExit: (_) => notifier.hoverStart(null),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: EdgeInsets.only(left: 5, top: selected ? 0 : 5, right: 5, bottom: 5),
        width: 50 + (selected ? 5 : 0),
        height: 50 + (selected ? 5 : 0),
        child: RawMaterialButton(
          onPressed: () {
            ref.read(windowListProvider.notifier).add(dockApp);
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: EdgeInsets.zero,
          child: Image.asset(
            dockApp.path,
            width: 60,
            height: 60,
          ),
        ),
      ),
    );
  }
}
