import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions/enum.dart';
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
      pType: [WindowPositionType.custom],
    );

    final old = state.where((e) => e.app.id == d.id).toList();
    if (old.isEmpty) {
      state = [...state, n];
    } else {
      state = [
        for (final x in state)
          if (x.app.id != n.app.id) x,
        old.first.copyWith(pType: [old.first.pType[1]]),
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
          x.copyWith(pType: [
            if (x.pType.first.isCustom) WindowPositionType.full else WindowPositionType.custom,
            ...x.pType.skip(1),
          ])
        else
          x
    ];
  }

  void windowMinimize(int id) {
    state = [
      for (final x in state)
        if (x.app.id == id) x.copyWith(pType: {WindowPositionType.minimize, ...x.pType}.toList()) else x
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
