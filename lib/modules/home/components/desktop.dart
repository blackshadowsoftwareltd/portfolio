import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/modules/home/provider/window.dart';

import '../../../common/window/window.dart';

class DesktopArea extends ConsumerWidget {
  const DesktopArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(windowListProvider.select((v) => v));
    final notifier = ref.read(windowListProvider.notifier);
    return Expanded(
      child: MouseRegion(
        key: ref.watch(boardMouseRegionProvider.notifier).globalKey,
        // onEnter: (event) => mouseNotifier.start(event.position),
        // onHover: (event) => mouseNotifier.update(event.position),
        // onExit: (event) => mouseNotifier.end(event.position),
        child: Stack(
          children: [
            for (final x in list)
              DesktopWindow(
                onClose: () => notifier.remove(x.app.id),
                onMaximize: () => notifier.windowMaximize(x.app.id),
                onMinimize: () => notifier.windowMinimize(x.app.id),
                ptype: x.pType.first,
                child: x.app.child,
              ),
          ],
        ),
      ),
    );
  }
}
