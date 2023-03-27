import 'package:coffe_flutter/pages/cafetaria.dart';
import 'package:coffe_flutter/pages/map.dart';
import 'package:flutter/material.dart';

const List<Widget> icons = <Widget>[
  Icon(Icons.location_on_outlined),
  Icon(Icons.menu),
];

class Cafetaria {
  String image;
  String name;
  String addr;
  String id;

  Cafetaria(
      {required this.name,
      required this.addr,
      required this.image,
      required this.id});
}

List<Cafetaria> listItems = [
  Cafetaria(
      image: "assets/images/1.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "1"),
  Cafetaria(
      image: "assets/images/2.jpg",
      name: "Coffee",
      addr: 'ул.25 Октября д.18/5',
      id: "2"),
  Cafetaria(
      image: "assets/images/3.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.Ленина д.23',
      id: "3"),
  Cafetaria(
      image: "assets/images/4.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.25 Октября д.2',
      id: "4"),
  Cafetaria(
      image: "assets/images/5.jpg",
      name: "Lattelady",
      addr: 'ул.Манойлова 76 д.2',
      id: "5"),
  Cafetaria(
      image: "assets/images/6.jpg",
      name: "Lattelady",
      addr: 'ул.Ленина д.23',
      id: "6"),
  Cafetaria(
      image: "assets/images/7.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "7"),
];

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<bool> _selectedWeather = <bool>[false, true];
  bool vertical = false;

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
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Expanded(
              child: ListView.separated(
            itemCount: listItems.length,
            padding: EdgeInsets.only(top: 16),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                //height: 126,
                color: Colors.white,
                child: Row(children: [
                  Image(
                    image: AssetImage(listItems[index].image),
                    width: 126,
                    height: 126,
                    fit: BoxFit.fill,
                  ),
                  Padding(padding: EdgeInsets.only(right: 14)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(padding: EdgeInsets.only(bottom: 14)),

                      Text(
                        listItems[index].name,
                        style: const TextStyle(
                          color: Color(0xFFC8D9AF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 14)),
                      const Text(
                        "мы находимся:",
                        style:
                            TextStyle(color: Color(0xFF717171), fontSize: 14),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 4)),
                      Text(
                        listItems[index].addr,
                        style:
                            TextStyle(color: Color(0xFF717171), fontSize: 16),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 4)),
                      ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CafetariaScreenState(
                                    item: listItems[index])),
                          )
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(234, 14),
                          // Button Minimum Width
                          elevation: 0,
                          padding: const EdgeInsets.all(0),
                          primary: Colors.transparent,
                          alignment: Alignment.centerRight,
                        ),
                        child: const Text(
                          "подробнее   >",
                          style: TextStyle(color: Color(0xFFBBBBBB)),
                        ),
                      )
                    ],
                  )
                ]),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              height: 8,
              color: Colors.transparent,
            ),
          ))
        ],
      ),
    );
  }
}
