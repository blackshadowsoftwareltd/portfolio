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
}
