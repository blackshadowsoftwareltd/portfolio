// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DockApp _$DockAppFromJson(Map<String, dynamic> json) {
  return _DockApp.fromJson(json);
}

/// @nodoc
mixin _$DockApp {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this DockApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DockApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DockAppCopyWith<DockApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockAppCopyWith<$Res> {
  factory $DockAppCopyWith(DockApp value, $Res Function(DockApp) then) =
      _$DockAppCopyWithImpl<$Res, DockApp>;
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class _$DockAppCopyWithImpl<$Res, $Val extends DockApp>
    implements $DockAppCopyWith<$Res> {
  _$DockAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DockApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockAppImplCopyWith<$Res> implements $DockAppCopyWith<$Res> {
  factory _$$DockAppImplCopyWith(
          _$DockAppImpl value, $Res Function(_$DockAppImpl) then) =
      __$$DockAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class __$$DockAppImplCopyWithImpl<$Res>
    extends _$DockAppCopyWithImpl<$Res, _$DockAppImpl>
    implements _$$DockAppImplCopyWith<$Res> {
  __$$DockAppImplCopyWithImpl(
      _$DockAppImpl _value, $Res Function(_$DockAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of DockApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_$DockAppImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockAppImpl with DiagnosticableTreeMixin implements _DockApp {
  const _$DockAppImpl({required this.name, required this.path});

  factory _$DockAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockAppImplFromJson(json);

  @override
  final String name;
  @override
  final String path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DockApp(name: $name, path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DockApp'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockAppImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, path);

  /// Create a copy of DockApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DockAppImplCopyWith<_$DockAppImpl> get copyWith =>
      __$$DockAppImplCopyWithImpl<_$DockAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockAppImplToJson(
      this,
    );
  }
}

abstract class _DockApp implements DockApp {
  const factory _DockApp(
      {required final String name, required final String path}) = _$DockAppImpl;

  factory _DockApp.fromJson(Map<String, dynamic> json) = _$DockAppImpl.fromJson;

  @override
  String get name;
  @override
  String get path;

  /// Create a copy of DockApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DockAppImplCopyWith<_$DockAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
