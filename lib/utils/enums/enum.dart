import 'package:flutter/material.dart';

enum WindowPositionType {
  full(null),
  custom(Size(700, 500));

  final Size? size;
  const WindowPositionType(this.size);
}
