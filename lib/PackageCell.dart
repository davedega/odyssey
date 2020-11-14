import 'package:flutter/material.dart';
import 'package:odyssey/package.dart';
import 'package:odyssey/shipment_detail.dart';

class PackageCell extends StatelessWidget {
  final Package package;

  PackageCell({this.package});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ShipmentDetail.routeName, arguments: package);
        },
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(" ${package.status}"), Text(" ${package.packageId}"), Divider(color: Colors.black)],
        )),
      ),
    );
  }
}
