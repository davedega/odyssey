import 'package:flutter/material.dart';
import 'package:odyssey/PackageCell.dart';
import 'package:odyssey/package.dart';
import 'package:odyssey/service.dart';
import 'package:odyssey/service_locator.dart';

class PackagesPage extends StatefulWidget {
  PackagesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PackagesPageState createState() => _PackagesPageState();
}

class _PackagesPageState extends State<PackagesPage> {
  PackageService service;
  List<Package> _packages;

  @override
  void initState() {
    super.initState();
    var service = getIt.get<PackageService>();
    _packages = service.getPackages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: _buildDrawer(),
        body: _buildPackagesList());
  }

  _buildDrawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

  _buildPackagesList() {
    return ListView.builder(
      itemCount: _packages.length,
      itemBuilder: (context, index) {
        return PackageCell(
          package: _packages[index],
        );
      },
    );
  }
}
