import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app.dart';
import 'router/navigationStore.dart';
final getIt = GetIt.instance;

void setup() {
  // getIt.registerSingleton<NavigationStore>(NavigationStore());
  getIt.registerLazySingleton<NavigationStore>(() => NavigationStore());
}
void main() {
  setup();
  runApp(App());
}