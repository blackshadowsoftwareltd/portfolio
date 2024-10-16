import 'package:flutter/material.dart';

enum WindowPositionType {
  full(null),
  minimize(null),
  custom(Size(800, 600));

  final Size? size;
  const WindowPositionType(this.size);
}
