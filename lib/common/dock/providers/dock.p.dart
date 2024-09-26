import 'package:flutter/material.dart';
import 'package:portfolio/modules/finder/finder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/dock.dart';
import '../../../utils/constants/path.dart';

part 'dock.p.g.dart';

@riverpod
class DockApps extends _$DockApps {
  DockApp? onHovered;
  @override
  List<DockApp> build() {
    return [
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'Finder',
        path: AssetsImagesPath.appIconFinder,
        child: const FinderWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'App Store',
        path: AssetsImagesPath.appIconAppStore,
        child: const Placeholder(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'Settings',
        path: AssetsImagesPath.appIconSettings,
        child: const Placeholder(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'VS Code',
        path: AssetsImagesPath.appIconVscode,
        child: const Placeholder(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'Calender',
        path: AssetsImagesPath.appIconCalender,
        child: const Placeholder(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'Contact',
        path: AssetsImagesPath.appIconContact,
        child: const Placeholder(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'Photos',
        path: AssetsImagesPath.appIconPhotos,
        child: const Placeholder(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch,
        name: 'Safari',
        path: AssetsImagesPath.appIconSafari,
        child: const Placeholder(),
      ),
    ];
  }

  void hoverStart(DockApp? app) {
    onHovered = app;
    ref.notifyListeners();
  }
}
