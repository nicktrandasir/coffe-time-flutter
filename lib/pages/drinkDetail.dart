import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/layouts/mainLayout.dart';
import 'package:flutter/material.dart';

class DrinkDetailScreen extends StatelessWidget {
  final Drink product;

  DrinkDetailScreen({super.key, required this.product});

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      showFavourite: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(product.image)),
                ),
                child: Stack(
                  children: const [
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Image(
                          image: AssetImage('assets/images/hit.png'),
                        )),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 35)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 22)),
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 24,
                      color: MyColors.darkGray,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 8)),
                  const Icon(
                    Icons.favorite,
                    color: MyColors.red,
                    size: 20,
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              Column(
                children: [
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 24)),
                      Column(
                        children: [
                          Material(
                            shape: const CircleBorder(),
                            color: MyColors.greenLight,
                            child: InkWell(
                              splashColor: Colors.transparent, // Splash color
                              onTap: () {},
                              child: const SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.local_drink,
                                    color: MyColors.lightGray,
                                  )),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            product.milkVolume,
                            style: const TextStyle(
                                fontSize: 12,
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF-UI-Text-Light.otf'),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(left: 16)),
                      Column(
                        children: [
                          Material(
                            shape: const CircleBorder(),
                            color: MyColors.blueLight,
                            child: InkWell(
                              splashColor: Colors.transparent, // Splash color
                              onTap: () {},
                              child: const SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.grain,
                                    color: MyColors.lightGray,
                                  )),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            product.coffeePercent,
                            style: const TextStyle(
                                fontSize: 12,
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF-UI-Text-Light.otf'),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(left: 16)),
                      Column(
                        children: [
                          Material(
                            shape: const CircleBorder(),
                            color: MyColors.yellowLight,
                            child: InkWell(
                              splashColor: Colors.transparent, // Splash color
                              onTap: () {},
                              child: const SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.opacity,
                                    color: MyColors.lightGray,
                                  )),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            product.volume,
                            style: const TextStyle(
                                fontSize: 12,
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF-UI-Text-Light.otf'),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(left: 16)),
                      Column(
                        children: [
                          Material(
                            shape: const CircleBorder(),
                            color: MyColors.greenLight,
                            child: InkWell(
                              splashColor: Colors.transparent, // Splash color
                              onTap: () {},
                              child: const SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.device_thermostat,
                                    color: MyColors.lightGray,
                                  )),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            product.temperature,
                            style: const TextStyle(
                                fontSize: 12,
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF-UI-Text-Light.otf'),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(left: 16)),
                      Column(
                        children: [
                          Material(
                            shape: const CircleBorder(),
                            color: MyColors.gray,
                            child: InkWell(
                              splashColor: Colors.transparent, // Splash color
                              onTap: () {},
                              child: const SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.speed,
                                    color: MyColors.lightGray,
                                  )),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            product.energy,
                            style: const TextStyle(
                                fontSize: 12,
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF-UI-Text-Light.otf'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(21, 31, 21, 0),
                    child: Text(
                      product.description,
                      style: const TextStyle(
                          fontSize: 16,
                          color: MyColors.lightGray,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF-UI-Text-Light.otf',
                          height: 1.4),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 24)),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 21, vertical: 0),
                child: Divider(
                  height: 2,
                  color: MyColors.whiteLightGray,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 21),
                      child: Text(product.price,
                          style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.normal,
                              color:MyColors.lightGray,
                              fontFamily: 'SF-UI-Text-Regular.otf')),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.greenLight,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 64),
                      ),
                      child: const Text("заказать",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SF-UI-Text-Regular.otf')),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
