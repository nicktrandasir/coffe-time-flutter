import 'package:coffe_flutter/components/switch.dart';
import 'package:coffe_flutter/pages/main.dart';
import 'package:flutter/material.dart';

class CafetariaScreenState extends StatelessWidget {
  final Cafetaria item;

  CafetariaScreenState({required this.item});

  bool light = true;

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
      body: Column(children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    item.image,
                  ),
                ),
              ),
              height: 308.0,
            ),
            Container(
              height: 308.0,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0.03),
                      Color.fromRGBO(255, 255, 255, 0.03),
                      Color(0xFFF7ECDA),
                    ],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    stops: [0.03, 0.2, 0.9],
                  )),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(16, 239, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  item.name,
                  style: const TextStyle(
                      color: Color(0xFF474747),
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      fontFamily: 'Lobster'),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(16, 279, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  item.addr,
                  style: const TextStyle(
                      color: Color(0xFF717171),
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                      fontFamily: 'SF-UI-Display-Regular'),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(342, 260, 10, 0),
                alignment: Alignment.topLeft,
                child: SwitchExample()),
          ],
        ),
        Expanded(
          child: GridView.count(
            padding: EdgeInsets.all(8),
            crossAxisCount: 2,
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            children: List.generate(100, (index) {
              return Container(
                padding: const EdgeInsets.all(16),
                color: Colors.grey,
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }),
          ),
        )
      ]),
      //Image(image: AssetImage(item.image), height: 308, width: double.infinity,fit: BoxFit.cover,),
    );
  }
}
