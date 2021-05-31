import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'navigationStore.g.dart';

class NavigationStore = _NavigationStore with _$NavigationStore;

abstract class _NavigationStore with Store {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  String token;

  @action
  pushNamedAndRemoveUntil(String routeName, {RoutePredicate predicate, Object arguments}) =>
      navigatorKey.currentState
          .pushNamedAndRemoveUntil(routeName, predicate ?? (_) => false, arguments: arguments);

  @action
  pushNamed(String routeName, {Object arguments}) =>
      navigatorKey.currentState.pushNamed(routeName, arguments: arguments);

  @action
  pop() => navigatorKey.currentState.pop();

// @action
// editUserPop(bool isSuccess) => navigatorKey.currentState.pop(isSuccess);

}