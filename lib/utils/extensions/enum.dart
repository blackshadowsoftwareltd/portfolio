import '../enums/enum.dart';

extension WindowPositionTypeExt on WindowPositionType {
  bool get isFull => this == WindowPositionType.full;
  bool get isMinimize => this == WindowPositionType.minimize;
  bool get isCustom => this == WindowPositionType.custom;
}
