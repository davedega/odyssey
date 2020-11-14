import 'package:odyssey/package.dart';

abstract class PackageService {
  getPackages();
}

class PackageServiceImpl implements PackageService {
  @override
  getPackages() {
    return List.of(_packages);
  }
}

var package1 = {
  "packageId": "DID#shipment-kgfh54656g76",
  "status": "ON ROUTE",
  "shipment": {
    "type": "Transportation",
    "status": "On Route",
    "hawb": "i1DF23gGU1GBBaadfkgkgjlkfhg738Okl",
    "pickUpAddress": "Amsterdam",
    "deliveryAddres": "Barcelona",
  }
};
var package2 = {
  "packageId": "DID#shipment-jhbjhtc567uhj",
  "status": "ON ROUTE",
  "shipment": {
    "type": "Transportation",
    "status": "On Route",
    "hawb": "i12SDJDGug76ce9cohu6fy986wghdflfjhfd9",
    "pickUpAddress": "Mexico",
    "deliveryAddres": "Spain",
  }
};
var package3 = {
  "packageId": "DID#shipment-vytv5767y",
  "status": "ON ROUTE",
  "shipment": {
    "type": "Transportation",
    "status": "On Route",
    "hawb": "i423LFFufhuiounbfreu79y8shlifds67hLol",
    "pickUpAddress": "Irak",
    "deliveryAddres": "Croatia",
  }
};

var _packages = [
  Package.fromMap(package1),
  Package.fromMap(package2),
  Package.fromMap(package3),
];
