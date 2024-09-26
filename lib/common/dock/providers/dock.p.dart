import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../modules/common/dock.dart';
import '../../../utils/constants/path.dart';

part 'dock.p.g.dart';

@riverpod
class DockApps extends _$DockApps {
  DockApp? onHovered;
  @override
  List<DockApp> build() {
    return const [
      DockApp(name: 'Finder', path: AssetsImagesPath.appIconFinder),
      DockApp(name: 'App Store', path: AssetsImagesPath.appIconAppStore),
      DockApp(name: 'Settings', path: AssetsImagesPath.appIconSettings),
      DockApp(name: 'VS Code', path: AssetsImagesPath.appIconVscode),
      DockApp(name: 'Calender', path: AssetsImagesPath.appIconCalender),
      DockApp(name: 'Contact', path: AssetsImagesPath.appIconContact),
      DockApp(name: 'Photos', path: AssetsImagesPath.appIconPhotos),
      DockApp(name: 'Safari', path: AssetsImagesPath.appIconSafari),
    ];
  }

  void hoverStart(DockApp? app) {
    onHovered = app;
    ref.notifyListeners();
  }
}
