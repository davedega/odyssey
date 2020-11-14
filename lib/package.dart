class Package {
  final String packageId;
  final String status;
  final Shipment shipment;

  Package({this.packageId, this.status, this.shipment});

  factory Package.fromMap(map) {
    return Package(packageId: map["packageId"], status: map["status"], shipment: Shipment.fromMap(map["shipment"]));
  }
}

class Shipment {
  final String type;
  final String status;
  final String hawb;
  final String pickUpAddress;
  final String deliveryAddres;

  Shipment({this.type, this.status, this.hawb, this.pickUpAddress, this.deliveryAddres});

  factory Shipment.fromMap(map) {
    return Shipment(
      type: map["type"],
      status: map["status"],
      hawb: map["hawb"],
      pickUpAddress: map["pickUpAddress"],
      deliveryAddres: map["deliveryAddres"],
    );
  }
}
