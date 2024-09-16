import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;
  double get scale => MediaQuery.of(this).devicePixelRatio;
  double get pixelRatio => scale;
  bool get isDark => theme.brightness == Brightness.dark;
  bool get isLight => theme.brightness == Brightness.light;
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortrait => MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isMobile => MediaQuery.of(this).size.shortestSide < 600;
  bool get isTablet => MediaQuery.of(this).size.shortestSide >= 600;
  bool get isDesktop => MediaQuery.of(this).size.shortestSide >= 1200;
  bool get isLargeScreen => MediaQuery.of(this).size.shortestSide >= 1920;
  bool get isVeryLargeScreen => MediaQuery.of(this).size.shortestSide >= 2560;
  bool get isExtraLargeScreen => MediaQuery.of(this).size.shortestSide >= 3840;
  bool get isSmallScreen => MediaQuery.of(this).size.shortestSide < 1280;
  bool get isVerySmallScreen => MediaQuery.of(this).size.shortestSide < 960;
  bool get isExtraSmallScreen => MediaQuery.of(this).size.shortestSide < 600;
  bool get isHighDensity => MediaQuery.of(this).devicePixelRatio > 1.5;
  bool get isVeryHighDensity => MediaQuery.of(this).devicePixelRatio > 2.5;
  bool get isExtraHighDensity => MediaQuery.of(this).devicePixelRatio > 3.5;
  bool get isLowDensity => MediaQuery.of(this).devicePixelRatio < 1.0;
  bool get isVeryLowDensity => MediaQuery.of(this).devicePixelRatio < 0.5;
  bool get isExtraLowDensity => MediaQuery.of(this).devicePixelRatio < 0.25;
}
