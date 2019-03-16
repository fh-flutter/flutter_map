import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home")),
      drawer: buildDrawer(context, route),
      body: new Padding(
        padding: new EdgeInsets.all(8.0),
        child: new Column(
          children: [
            new Padding(
              padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: new Text("This is a map that is showing (51.5, -0.9)."),
            ),
            new Flexible(
              child: new FlutterMap(
                options: new MapOptions(
                  center: new LatLng(0, 0),
                  zoom: 0.0,
                  maxZoom: 8.0,
                  minZoom: 0
                ),
                layers: [
                  new TileLayerOptions(
                      urlTemplate:
                          "https://label.hzztai.com/image.php?file=hzzt_test%2F20181025_jinyu_pos300%2F2018-10-18%2019_12_14.kfb"
//                          "https://label.hzztai.com/image.php?file=P16%2F2018-11-27+13_55_44.kfb&x={x}&y={y}&level={z}&scale={s}"
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
