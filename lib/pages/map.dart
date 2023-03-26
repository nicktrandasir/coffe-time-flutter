import 'package:coffe_flutter/pages/main.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapState();
}

const List<Widget> icons = <Widget>[
  Icon(Icons.location_on_outlined),
  Icon(Icons.menu),
];

class _MapState extends State<MapScreen> {
  final List<bool> _selectedWeather = <bool>[true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            selectedColor: Color(0xFF717171),
            fillColor: Color(0xFFC8D9AF),
            color: Color(0xFF717171),
            isSelected: _selectedWeather,
            children: icons,
          ),

        ],
      ),
      )
    );
  }
}
