import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions/context.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/dock/models/dock.dart';
import '../../../utils/constants/constants.dart';
import '../../../utils/constants/path.dart';
import '../../red_file/red_file.dart';
import 'window.dart';

part 'desktop.p.g.dart';

@riverpod
class DesktopAppPosition extends _$DesktopAppPosition {
  double x = 0;
  double y = 0;
  double yPlus = 0;
  @override
  Offset build((BuildContext c, int i) f) {
    x = f.$1.screenWidth - desktopAppWidth - desktopAppMerging;
    y = f.$1.screenHeight - dockHeight - titlebarHeight;
    yPlus = (desktopAppWidth + desktopAppMerging) * f.$2;
    return Offset(x, y - yPlus);
  }

  void dragStart() {}
  void dragUpdate(Offset globalPosition) {}
  void dragEnd(Offset end) {
    final key_ = ref.read(desktopMouseRegionProvider.notifier).globalKey;
    final RenderBox renderBox = key_.currentContext!.findRenderObject() as RenderBox;
    Offset t = end - renderBox.localToGlobal(Offset.zero);
    state = Offset(
      t.dx < desktopAppMerging
          ? desktopAppMerging
          : t.dx > x
              ? x
              : t.dx,
      t.dy < desktopAppMerging
          ? desktopAppMerging
          : t.dy > y - yPlus
              ? y - yPlus
              : t.dy,
    );
  }
}

@riverpod
class DesktopApps extends _$DesktopApps {
  DockApp? onHovered;
  @override
  List<DockApp> build() {
    return [
      DockApp(
        id: 1 + DateTime.now().millisecondsSinceEpoch,
        name: 'Red File',
        path: AssetsImagesPath.appIconRedfile,
        child: const RedFile(),
      ),
    ];
  }

  void hoverStart(DockApp? app) {
    onHovered = app;
    ref.notifyListeners();
  }
}
