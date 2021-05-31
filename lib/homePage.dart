import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hotelorder_r2_app/router/routeName.dart';

import 'router/navigationStore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home12342asd11'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            RaisedButton(
              onPressed: () {
                GetIt.instance<NavigationStore>().pushNamed(RouteName.SplashRoute);
              },
              child: Text(
                'counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
