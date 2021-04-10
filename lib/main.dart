import 'package:flutter/material.dart';

import 'package:money_management/views/welcome/views/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigator(
        pages: [MaterialPage(child: WelcomePage())],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
