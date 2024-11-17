// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_application/box_page.dart' as _i1;
import 'package:flutter_application/main.dart' as _i2;

/// generated route for
/// [_i1.BoxPage]
class BoxPageRoute extends _i3.PageRouteInfo<BoxPageRouteArgs> {
  BoxPageRoute({
    _i4.Key? key,
    required int boxId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          BoxPageRoute.name,
          args: BoxPageRouteArgs(
            key: key,
            boxId: boxId,
          ),
          rawPathParams: {'boxId': boxId},
          initialChildren: children,
        );

  static const String name = 'BoxPageRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BoxPageRouteArgs>(
          orElse: () => BoxPageRouteArgs(boxId: pathParams.getInt('boxId')));
      return _i1.BoxPage(
        key: args.key,
        boxId: args.boxId,
      );
    },
  );
}

class BoxPageRouteArgs {
  const BoxPageRouteArgs({
    this.key,
    required this.boxId,
  });

  final _i4.Key? key;

  final int boxId;

  @override
  String toString() {
    return 'BoxPageRouteArgs{key: $key, boxId: $boxId}';
  }
}

/// generated route for
/// [_i2.MyHomePage]
class MyHomePageRoute extends _i3.PageRouteInfo<void> {
  const MyHomePageRoute({List<_i3.PageRouteInfo>? children})
      : super(
          MyHomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomePageRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.MyHomePage();
    },
  );
}
