import 'package:flutter/material.dart';
import 'package:odyssey/package.dart';

class ShipmentDetail extends StatelessWidget {
  static final String routeName = 'shipment-detail';

  final Package package;

  const ShipmentDetail({Key key, this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uhijokihkgjuk"),
      ),
      body: _buildDetail(context),
    );
  }

  _buildDetail(BuildContext context) {
    TextStyle body1 = Theme.of(context).textTheme.bodyText1;
    TextStyle body2 = Theme.of(context).textTheme.bodyText2;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
      child: ListView(
        children: [
          Container(
            height: 16,
          ),
          Text(
            "TYPE",
            style: body1,
          ),
          Text(" ${package.shipment.type}", style: body2),
          Divider(color: Colors.grey),
          Text("STATUS/TEXT", style: body1),
          Text(" ${package.shipment.status}", style: body2),
          Divider(color: Colors.grey),
          Text("HAWB", style: body1),
          Text(" ${package.shipment.hawb}", style: body2),
          Divider(color: Colors.grey),
          Text("PICKUP ADDRESS [CITY]", style: body1),
          Text(" ${package.shipment.pickUpAddress}", style: body2),
          Divider(color: Colors.grey),
          Text("DELIVERY ADDRESS [CITY]", style: body1),
          Text(" ${package.shipment.deliveryAddres}", style: body2),
          Divider(color: Colors.grey),
          SizedBox(height: 16),
          _buildFirstStep(body1, body2),
          _buildReadyForTransportation(),
        ],
      ),
    );
  }

  _buildFirstStep(body1, body2) {
    return Row(
      children: [
        Icon(
          Icons.fiber_manual_record,
          color: Colors.grey,
          size: 34,
          key: Key("operational_status_up"),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("START", style: body1),
            Text("Ready for transportation", style: body2),
          ],
        )
      ],
    );
  }

  _buildReadyForTransportation() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Container(
            width: 1,
            height: 60,
            color: Colors.grey,
          ),
          SizedBox(
            width: 32,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("MARK READY FOR TRANSPORT"),
            color: Colors.deepPurple,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
