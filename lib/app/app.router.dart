// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:esports_arena/presentation/screens/Second_screen.dart' as _i3;
import 'package:esports_arena/SomeScreen.dart' as _i2;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i5;

class Routes {
  static const somescreen = '/';

  static const secondScreen = '/second-screen';

  static const all = <String>{
    somescreen,
    secondScreen,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.somescreen,
      page: _i2.Somescreen,
    ),
    _i1.RouteDef(
      Routes.secondScreen,
      page: _i3.SecondScreen,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.Somescreen: (data) {
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.Somescreen(),
        settings: data,
      );
    },
    _i3.SecondScreen: (data) {
      final args = data.getArgs<SecondScreenArguments>(nullOk: false);
      return _i4.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i3.SecondScreen(key: args.key, value: args.value),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SecondScreenArguments {
  const SecondScreenArguments({
    this.key,
    required this.value,
  });

  final _i4.Key? key;

  final double value;

  @override
  String toString() {
    return '{"key": "$key", "value": "$value"}';
  }

  @override
  bool operator ==(covariant SecondScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.value == value;
  }

  @override
  int get hashCode {
    return key.hashCode ^ value.hashCode;
  }
}

extension NavigatorStateExtension on _i5.NavigationService {
  Future<dynamic> navigateToSomescreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.somescreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSecondScreen({
    _i4.Key? key,
    required double value,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.secondScreen,
        arguments: SecondScreenArguments(key: key, value: value),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSomescreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.somescreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSecondScreen({
    _i4.Key? key,
    required double value,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.secondScreen,
        arguments: SecondScreenArguments(key: key, value: value),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
