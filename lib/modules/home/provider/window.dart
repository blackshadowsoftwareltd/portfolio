import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/dock/models/dock.dart';
import '../../../utils/enums/enum.dart';
import '../models/window.dart';

part 'window.g.dart';

@riverpod
class WindowList extends _$WindowList {
  @override
  List<WindowConfig> build() {
    return [];
  }

  void add(DockApp d) {
    final n = WindowConfig(
      width: null,
      height: null,
      positionX: null,
      positionY: null,
      app: d,
      pType: WindowPositionType.custom,
    );
    final old = state.where((e) => e.app.id == d.id).toList();
    if (old.isEmpty) {
      state = [...state, n];
    } else {
      [
        for (final x in state)
          if (x.app.id == d.id) x,
        ...old,
      ];
    }
  }
}
