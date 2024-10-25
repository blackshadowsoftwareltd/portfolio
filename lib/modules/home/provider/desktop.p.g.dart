// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desktop.p.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$desktopAppPositionHash() =>
    r'8dee73bae77dbc4ec63cf750ee6293bbcf7dacdd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DesktopAppPosition
    extends BuildlessAutoDisposeNotifier<Offset> {
  late final (BuildContext, int) f;

  Offset build(
    (BuildContext, int) f,
  );
}

/// See also [DesktopAppPosition].
@ProviderFor(DesktopAppPosition)
const desktopAppPositionProvider = DesktopAppPositionFamily();

/// See also [DesktopAppPosition].
class DesktopAppPositionFamily extends Family<Offset> {
  /// See also [DesktopAppPosition].
  const DesktopAppPositionFamily();

  /// See also [DesktopAppPosition].
  DesktopAppPositionProvider call(
    (BuildContext, int) f,
  ) {
    return DesktopAppPositionProvider(
      f,
    );
  }

  @override
  DesktopAppPositionProvider getProviderOverride(
    covariant DesktopAppPositionProvider provider,
  ) {
    return call(
      provider.f,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'desktopAppPositionProvider';
}

/// See also [DesktopAppPosition].
class DesktopAppPositionProvider
    extends AutoDisposeNotifierProviderImpl<DesktopAppPosition, Offset> {
  /// See also [DesktopAppPosition].
  DesktopAppPositionProvider(
    (BuildContext, int) f,
  ) : this._internal(
          () => DesktopAppPosition()..f = f,
          from: desktopAppPositionProvider,
          name: r'desktopAppPositionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$desktopAppPositionHash,
          dependencies: DesktopAppPositionFamily._dependencies,
          allTransitiveDependencies:
              DesktopAppPositionFamily._allTransitiveDependencies,
          f: f,
        );

  DesktopAppPositionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.f,
  }) : super.internal();

  final (BuildContext, int) f;

  @override
  Offset runNotifierBuild(
    covariant DesktopAppPosition notifier,
  ) {
    return notifier.build(
      f,
    );
  }

  @override
  Override overrideWith(DesktopAppPosition Function() create) {
    return ProviderOverride(
      origin: this,
      override: DesktopAppPositionProvider._internal(
        () => create()..f = f,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        f: f,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DesktopAppPosition, Offset>
      createElement() {
    return _DesktopAppPositionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DesktopAppPositionProvider && other.f == f;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, f.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DesktopAppPositionRef on AutoDisposeNotifierProviderRef<Offset> {
  /// The parameter `f` of this provider.
  (BuildContext, int) get f;
}

class _DesktopAppPositionProviderElement
    extends AutoDisposeNotifierProviderElement<DesktopAppPosition, Offset>
    with DesktopAppPositionRef {
  _DesktopAppPositionProviderElement(super.provider);

  @override
  (BuildContext, int) get f => (origin as DesktopAppPositionProvider).f;
}

String _$desktopAppsHash() => r'8bbd29dbdad2070be042d66a4486e6a0678d147b';

/// See also [DesktopApps].
@ProviderFor(DesktopApps)
final desktopAppsProvider =
    AutoDisposeNotifierProvider<DesktopApps, List<DockApp>>.internal(
  DesktopApps.new,
  name: r'desktopAppsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$desktopAppsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DesktopApps = AutoDisposeNotifier<List<DockApp>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
