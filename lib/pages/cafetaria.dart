import 'package:coffe_flutter/components/switch.dart';
import 'package:coffe_flutter/pages/main.dart';
import 'package:flutter/material.dart';

class Drink {
  String image;
  String name;
  String type;
  String price;

  Drink(
      {required this.name,
      required this.type,
      required this.image,
      required this.price});
}

List<Drink> drinkItems = [
  Drink(
      image: "assets/images/drinks/amer.jpg",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "1 ₽"),
  Drink(
      image: "assets/images/drinks/amer1.jpg",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "12 ₽"),
  Drink(
      image: "assets/images/drinks/espr1.png",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "2 ₽"),
  Drink(
      image: "assets/images/drinks/latte.png",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "11 ₽"),
  Drink(
      image: "assets/images/drinks/latte3.jpg",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "23 ₽"),
  Drink(
      image: "assets/images/drinks/latte4.jpg",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "5 ₽"),
  Drink(
      image: "assets/images/drinks/latte7.png",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "1 ₽"),
  Drink(
      image: "assets/images/drinks/latte4.jpg",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "1 ₽"),
  Drink(/**/
      image: "assets/images/drinks/latte3.jpg",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "1 ₽"),
  Drink(
      image: "assets/images/drinks/espr1.png",
      name: "Coffee",
      type: 'кофейный напиток',
      price: "1 ₽"),
];

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
          child: Container(
              color: Color(0xFFF6F6F6),
              child: GridView(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 223,
                  maxCrossAxisExtent: 223,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 8,
                ),
                children: drinkItems
                    .map((e) => Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.name,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF717171),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 2)),
                                    Text(
                                      e.type,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF717171),
                                          fontWeight: FontWeight.normal),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 17)),
                                    Image(
                                      image: AssetImage(e.image),
                                      width: 160,
                                      height: 119,
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 6)),
                                    Row(
                                      children: [
                                      Text(
                                        e.price,
                                        style: const TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFFC8D9AF),
                                            fontWeight: FontWeight.bold),
                                      ),
                                        SizedBox(width: 96),
                                        Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                        size: 22,
                                      ),
                                    ],)

                                  ]),
                            )
                          ],
                        )))
                    .toList(),
              )),
        )
      ]),
      //Image(image: AssetImage(item.image), height: 308, width: double.infinity,fit: BoxFit.cover,),
    );
  }
}
