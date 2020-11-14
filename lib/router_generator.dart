import 'package:flutter/material.dart';
import 'package:odyssey/shipment_detail.dart';
import 'package:odyssey/soon.dart';

class RouteGenerator {
  static Route<dynamic> mapSettingToRoute(RouteSettings settings) {
    var widget = fromRouteTable(settings.name, settings.arguments);
    return MaterialPageRoute(builder: (_) => widget);
  }

  static fromRouteTable(route, arguments) {
    var routeTable = {
      // Login.routeName: Login(),
      // SearchPage.routeName: SearchPage(),
      // SearchResults.routeName: SearchResults(),
      // DashboardPage.routeName: DashboardPage(),
      // Settings.routeName: Settings(),
      // HioOmstekenPage.routeName: HioOmstekenPage(),
      // HioDetailPage.routeName: HioDetailPage(),
      // OntActivationPage.routeName: OntActivationPage(),
      ShipmentDetail.routeName: ShipmentDetail(package: arguments),
      Soon.routeName: Soon(),
    };
    return routeTable[route] ?? Soon();
  }
}
