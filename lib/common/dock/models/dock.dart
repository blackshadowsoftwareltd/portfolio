// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; 
part 'dock.freezed.dart'; 
part 'dock.g.dart';

@freezed
class DockApp with _$DockApp {
  const factory DockApp({
    required String name,
    required String path,
  }) = _DockApp;

  factory DockApp.fromJson(Map<String, Object?> json) => _$DockAppFromJson(json);
}
