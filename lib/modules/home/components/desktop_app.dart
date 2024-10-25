import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common/dock/models/dock.dart';
import '../../../utils/constants/constants.dart';
import '../provider/desktop.p.dart';
import '../provider/window.dart';

class DesktopApp extends ConsumerWidget {
  const DesktopApp({super.key, required this.i, required this.app});
  final int i;
  final DockApp app;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final family = (context, i);
    final position = ref.watch(desktopAppPositionProvider(family));
    final child = CupertinoButton(
      onPressed: () {
        // ref.read(windowListProvider.notifier).add(app);
      },
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: desktopAppWidth,
        height: desktopAppWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              app.path,
              width: desktopAppWidth,
              height: desktopAppWidth - 15,
            ),
            Flexible(
              child: Text(
                app.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Draggable(
        onDragStarted: () => ref.read(desktopAppPositionProvider(family).notifier).dragStart(),
        onDragUpdate: (details) =>
            ref.read(desktopAppPositionProvider(family).notifier).dragUpdate(details.globalPosition),
        onDragEnd: (details) => ref.read(desktopAppPositionProvider(family).notifier).dragEnd(details.offset),
        feedback: Opacity(opacity: .5, child: child),
        child: child,
      ),
    );
  }
}
