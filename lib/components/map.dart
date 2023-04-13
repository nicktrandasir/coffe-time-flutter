import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  MapState createState() => MapState();
}

class MapState extends State<Map> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};

  LatLng lateLady = const LatLng(46.8407, 29.6221);
  LatLng coffee = const LatLng(46.8449, 29.6261);

  @override
  void initState() {
    addMarkers();
    super.initState();
  }

  addMarkers() async {
    BitmapDescriptor markerBitmap = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(14, 14)),
      "assets/icons/icon_locating.png",
    );

    markers.add(
      Marker(
        markerId: MarkerId(lateLady.toString()),
        position: lateLady, //position of marker
        infoWindow: const InfoWindow(
          title: 'Starting Point ',
          snippet: 'Start Marker',
        ),
        icon: markerBitmap,
      ),
    );

    markers.add(
      Marker(
        markerId: MarkerId(coffee.toString()),
        position: coffee,
        infoWindow: const InfoWindow(
          title: 'End Point ',
          snippet: 'End Marker',
        ),
        icon: markerBitmap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(
          target: lateLady, //initial position
          zoom: 15.0, //initial zoom level
        ),
        markers: markers,
        mapType: MapType.normal,
        myLocationButtonEnabled: false,
        onMapCreated: (controller) {
          setState(
            () {
              mapController = controller;
            },
          );
        },
      ),
    );
  }
}
