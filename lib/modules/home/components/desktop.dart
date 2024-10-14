import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/modules/home/provider/window.dart';

import '../../../common/window/window.dart';

class DesktopArea extends ConsumerWidget {
  const DesktopArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(windowListProvider.select((v) => v));
    return Expanded(
      child: Stack(
        children: [
          for (final x in list)
            DesktopWindow(
              onClose: () {
                ref.read(windowListProvider.notifier).remove(x.app);
              },
              onMaximize: () {},
              onMinimize: () {},
              ptype: x.pType,
              child: x.app.child,
            ),
        ],
      ),
    );
  }
}
