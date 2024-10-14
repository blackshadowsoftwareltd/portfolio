// This file is "main.dart"
import 'package:portfolio/common/dock/models/dock.dart';

import '../../../utils/enums/enum.dart';

class WindowConfig {
  final double? width;
  final double? height;
  final double? positionX;
  final double? positionY;
  final DockApp app;
  final WindowPositionType pType;

  WindowConfig({
    required this.width,
    required this.height,
    required this.positionX,
    required this.positionY,
    required this.app,
    required this.pType,
  });

  WindowConfig copyWith({
    double? width,
    double? height,
    double? positionX,
    double? positionY,
    DockApp? app,
    WindowPositionType? pType,
  }) {
    return WindowConfig(
      width: width ?? this.width,
      height: height ?? this.height,
      positionX: positionX ?? this.positionX,
      positionY: positionY ?? this.positionY,
      app: app ?? this.app,
      pType: pType ?? this.pType,
    );
  }
}
