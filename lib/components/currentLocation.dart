import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CurrentLocation extends StatelessWidget {
  final String lat;
  final String lng;

  late GoogleMapController mapController;

  CurrentLocation({super.key, required this.lat, required this.lng});

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(lat), double.parse(lng)),
          zoom: 18.0,
        ),
      ),
    );
  }
}
