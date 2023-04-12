import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/drinkComposition.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                        Icons.favorite_border,
                        color: MyColors.gray,
                        size: 24,
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 16)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 24),
                          Wrap(
                            spacing: 16,
                            children: [
                              DrinkComposition(
                                  volume: product.milkVolume,
                                  icon: const Icon(
                                    Icons.local_drink,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.greenLight),
                              DrinkComposition(
                                  volume: product.coffeePercent,
                                  icon: const Icon(
                                    Icons.grain,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.blueLight),
                              DrinkComposition(
                                  volume: product.volume,
                                  icon: const Icon(
                                    Icons.opacity,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.yellowLight),
                              DrinkComposition(
                                  volume: product.temperature,
                                  icon: const Icon(
                                    Icons.device_thermostat,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.greenLight),
                              DrinkComposition(
                                  volume: product.energy,
                                  icon: const Icon(
                                    Icons.speed,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.whiteMilk),
                            ],
                          )
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
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 21),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: Divider(height: 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(product.price,
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                            color: MyColors.lightGray,
                            fontFamily: 'SF-UI-Text-Regular.otf')),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
