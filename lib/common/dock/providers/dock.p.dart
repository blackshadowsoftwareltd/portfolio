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
        id: 1 + DateTime.now().millisecondsSinceEpoch,
        name: 'Finder',
        path: AssetsImagesPath.appIconFinder,
        child: const FinderWindow(),
      ),
      DockApp(
        id: 2 + DateTime.now().millisecondsSinceEpoch,
        name: 'App Store',
        path: AssetsImagesPath.appIconAppStore,
        child: const AppStoreWindow(),
      ),
      DockApp(
        id: 3 + DateTime.now().millisecondsSinceEpoch,
        name: 'Settings',
        path: AssetsImagesPath.appIconSettings,
        child: const SettingsWindow(),
      ),
      DockApp(
        id: 4 + DateTime.now().millisecondsSinceEpoch,
        name: 'VS Code',
        path: AssetsImagesPath.appIconVscode,
        child: const VSCodeWindow(),
      ),
      DockApp(
        id: 5 + DateTime.now().millisecondsSinceEpoch,
        name: 'Calender',
        path: AssetsImagesPath.appIconCalender,
        child: const CalenderWindow(),
      ),
      DockApp(
        id: 6 + DateTime.now().millisecondsSinceEpoch,
        name: 'Contact',
        path: AssetsImagesPath.appIconContact,
        child: const ContactWindow(),
      ),
      DockApp(
        id: 7 + DateTime.now().millisecondsSinceEpoch,
        name: 'Photos',
        path: AssetsImagesPath.appIconPhotos,
        child: const PhotosWindow(),
      ),
      DockApp(
        id: 8 + DateTime.now().millisecondsSinceEpoch,
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
