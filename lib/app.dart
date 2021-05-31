import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'homePage.dart';
import 'router/navigationStore.dart';
import 'router/pageRouter.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      onGenerateRoute: PageRouter.generateRoute,
      navigatorKey: GetIt.instance.get<NavigationStore>().navigatorKey,
    );
  }
}