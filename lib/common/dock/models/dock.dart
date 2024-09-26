import 'package:flutter/material.dart';

class DockApp {
  final int id;
  final String name;
  final String path;
  final Widget child;

  DockApp({required this.name, required this.path, required this.child, required this.id});

  DockApp copyWith({String? name, String? path, Widget? child, int? id}) {
    return DockApp(
      id: id ?? this.id,
      name: name ?? this.name,
      path: path ?? this.path,
      child: child ?? this.child,
    );
  }
}
