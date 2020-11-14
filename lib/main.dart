import 'package:flutter/material.dart';
import 'package:odyssey/home.dart';
import 'package:odyssey/router_generator.dart';
import 'package:odyssey/service_locator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    registerServices();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Odyssey',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PackagesPage(title: 'Packages List'),
      onGenerateRoute: RouteGenerator.mapSettingToRoute,
    );
  }
}
