import 'dart:async';
import 'package:coffe_flutter/pages/main.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

const List<Widget> icons = <Widget>[
  Icon(Icons.location_on_outlined),
  Icon(Icons.menu),
];

class _MapState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);
  final List<bool> _selectedWeather = <bool>[true, false];
  bool vertical = false;
  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF474747)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("CoffeTime",
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 22,
                fontFamily: 'Lobster',
              )),
          centerTitle: true,
          backgroundColor: Color(0xFFF6F6F6),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 8),
                    ToggleButtons(
                      // direction: vertical ? Axis.vertical : Axis.horizontal,
                      onPressed: (int index) {
                        setState(() {
                          // The button that is tapped is set to true, and the others to false.
                          for (int i = 0; i < _selectedWeather.length; i++) {
                            _selectedWeather[i] = i == index;
                          }
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  index == 0 ? MapScreen() : MainScreen()),
                        );
                      },
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      //selectedBorderColor: Colors.blue[700],
                      selectedColor: Color(0xFF717171),
                      fillColor: Color(0xFFC8D9AF),
                      color: Color(0xFF717171),
                      isSelected: _selectedWeather,
                      children: icons,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
