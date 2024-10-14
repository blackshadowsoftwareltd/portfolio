import 'package:portfolio/modules/finder/finder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../modules/appstore/appstore.dart';
import '../../../modules/calender/calender.dart';
import '../../../modules/contact/contact.dart';
import '../../../modules/photos/photos.dart';
import '../../../modules/safary/sarary.dart';
import '../../../modules/settings/settings.dart';
import '../../../modules/vs_code/vs_code.dart';
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
        id: DateTime.now().millisecondsSinceEpoch + 1,
        name: 'Finder',
        path: AssetsImagesPath.appIconFinder,
        child: const FinderWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 2,
        name: 'App Store',
        path: AssetsImagesPath.appIconAppStore,
        child: const AppStoreWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 3,
        name: 'Settings',
        path: AssetsImagesPath.appIconSettings,
        child: const SettingsWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 4,
        name: 'VS Code',
        path: AssetsImagesPath.appIconVscode,
        child: const VSCodeWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 5,
        name: 'Calender',
        path: AssetsImagesPath.appIconCalender,
        child: const CalenderWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 6,
        name: 'Contact',
        path: AssetsImagesPath.appIconContact,
        child: const ContactWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 7,
        name: 'Photos',
        path: AssetsImagesPath.appIconPhotos,
        child: const PhotosWindow(),
      ),
      DockApp(
        id: DateTime.now().millisecondsSinceEpoch + 8,
        name: 'Safari',
        path: AssetsImagesPath.appIconSafari,
        child: const SafaryWindow(),
      ),
    ];
  }

  void hoverStart(DockApp? app) {
    onHovered = app;
    ref.notifyListeners();
  }
}
