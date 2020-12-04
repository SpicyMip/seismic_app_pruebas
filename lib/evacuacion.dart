import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Evacuacion extends StatefulWidget {
  final LatLng fromPoint = LatLng(-33.016458927972565, -71.55328516751443);
  final LatLng toPoint = LatLng(-33.015610327842495, -71.5350427572602);
  @override
  _EvacuacionState createState() => _EvacuacionState();
}

class _EvacuacionState extends State<Evacuacion> {
  GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: widget.fromPoint,
              zoom: 12,
            ),
            markers: _createMarkers(),
            onMapCreated: _onMapCreated,
          ),
        ],
      ),
    );
  }

  Set<Marker> _createMarkers() {
    var tmp = Set<Marker>();

    tmp.add(
      Marker(
        markerId: MarkerId("fromPoint"),
        position: widget.fromPoint,
        infoWindow: InfoWindow(title: "Ubicacion Persona"),
      ),
    );
    tmp.add(
      Marker(
        markerId: MarkerId("toPoint"),
        position: widget.toPoint,
        infoWindow: InfoWindow(title: "Lugar seguro"),
      ),
    );
    return tmp;
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _centerView();
  }

  _centerView() async {
    await _mapController.getVisibleRegion();

    var left = min(widget.fromPoint.latitude, widget.toPoint.latitude);
    var right = max(widget.fromPoint.latitude, widget.toPoint.latitude);
    var top = max(widget.fromPoint.longitude, widget.toPoint.longitude);
    var bottom = min(widget.fromPoint.longitude, widget.toPoint.longitude);
    var bounds = LatLngBounds(
        southwest: LatLng(left, bottom), northeast: LatLng(right, top));

    var cameraUdapte = CameraUpdate.newLatLngBounds(bounds, 50);
    _mapController.animateCamera(cameraUdapte);
  }
}
