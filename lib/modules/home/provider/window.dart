import 'package:flutter/material.dart';
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
      state = [
        for (final x in state)
          if (x.app.id != n.app.id) x,
        ...old,
      ];
    }
  }

  void remove(int id) {
    state = [
      for (final x in state)
        if (x.app.id != id) x
    ];
  }

  void windowMaximize(int id) {
    state = [
      for (final x in state)
        if (x.app.id == id)
          x.copyWith(pType: x.pType == WindowPositionType.full ? WindowPositionType.custom : WindowPositionType.full)
    ];
  }
}

@riverpod
class BoardMouseRegion extends _$BoardMouseRegion {
  final GlobalKey globalKey = GlobalKey();

  @override
  Offset? build() => null;

  void start(Offset n) {
    // final RenderBox renderBox = globalKey.currentContext!.findRenderObject() as RenderBox;
    // state = n - renderBox.localToGlobal(Offset.zero);
    // print(state);
  }

  void update(Offset n) {
    // final RenderBox renderBox = globalKey.currentContext!.findRenderObject() as RenderBox;
    // state = n - renderBox.localToGlobal(Offset.zero);
    // print(state);
  }

  void end(Offset n) {
    // state = null;
  }
}
