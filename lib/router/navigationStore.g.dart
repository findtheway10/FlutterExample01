// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigationStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationStore on _NavigationStore, Store {
  final _$_NavigationStoreActionController =
      ActionController(name: '_NavigationStore');

  @override
  dynamic pushNamedAndRemoveUntil(String routeName,
      {RoutePredicate predicate, Object arguments}) {
    final _$actionInfo = _$_NavigationStoreActionController.startAction(
        name: '_NavigationStore.pushNamedAndRemoveUntil');
    try {
      return super.pushNamedAndRemoveUntil(routeName,
          predicate: predicate, arguments: arguments);
    } finally {
      _$_NavigationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pushNamed(String routeName, {Object arguments}) {
    final _$actionInfo = _$_NavigationStoreActionController.startAction(
        name: '_NavigationStore.pushNamed');
    try {
      return super.pushNamed(routeName, arguments: arguments);
    } finally {
      _$_NavigationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pop() {
    final _$actionInfo = _$_NavigationStoreActionController.startAction(
        name: '_NavigationStore.pop');
    try {
      return super.pop();
    } finally {
      _$_NavigationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
