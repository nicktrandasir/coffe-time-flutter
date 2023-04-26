import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/drinkComposition.dart';
import 'package:coffe_flutter/components/layouts/mainLayout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class DrinkDetailScreen extends StatefulWidget {
  final Drink product;

  const DrinkDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DrinkDetailScreen> createState() => _DrinkDetailScreen();
}

class _DrinkDetailScreen extends State<DrinkDetailScreen> {
  bool _isFavourite = false;
  List<String> _favouriteDrinks = [];

  @override
  void initState() {
    super.initState();
    _getPrefs();
  }

  void _addItem() {
    if (widget.product.id.isNotEmpty) {
      setState(() => _favouriteDrinks.add(widget.product.id));
      _setPrefs();
      _isFavourite = true;
    }
  }

  void _removeItem() {
    setState(() => _favouriteDrinks.remove(widget.product.id));
    _setPrefs();
    _isFavourite = false;
  }

  void _setPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('Drinks', _favouriteDrinks.toSet().toList());
  }

  void _getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getStringList('Drinks') != null) {
      _favouriteDrinks = prefs.getStringList('Drinks')!.toSet().toList();
    }

    var isInFavourite = prefs
        .getStringList('Drinks')
        ?.firstWhere((element) => element == widget.product.id);

    setState(() {
      _isFavourite = isInFavourite != null ? true : false;
    });
  }

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
                  image: DecorationImage(image: AssetImage(widget.product.image)),
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
                        widget.product.name,
                        style: const TextStyle(
                          fontSize: 24,
                          color: MyColors.darkGray,
                          fontFamily: 'Lobster',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Icon(
                            _isFavourite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                            _isFavourite ? MyColors.red : MyColors.gray,
                            size: 22,
                          ),
                        ),
                        onTap: () {
                          _isFavourite ? _removeItem() : _addItem();
                        },
                      ),
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
                                  volume: widget.product.milkVolume,
                                  icon: const Icon(
                                    Icons.local_drink,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.greenLight),
                              DrinkComposition(
                                  volume: widget.product.coffeePercent,
                                  icon: const Icon(
                                    Icons.grain,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.blueLight),
                              DrinkComposition(
                                  volume: widget.product.volume,
                                  icon: const Icon(
                                    Icons.opacity,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.yellowLight),
                              DrinkComposition(
                                  volume: widget.product.temperature,
                                  icon: const Icon(
                                    Icons.device_thermostat,
                                    color: MyColors.lightGray,
                                  ),
                                  bg: MyColors.greenLight),
                              DrinkComposition(
                                  volume: widget.product.energy,
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
                          widget.product.description,
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
                    Text(
                      widget.product.price,
                      style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                          color: MyColors.lightGray,
                          fontFamily: 'SF-UI-Text-Regular.otf'),
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('drinkComponent.orderConfirm'.tr()),
                          ),
                        ),
                        Timer(const Duration(seconds: 1), () {
                          Navigator.of(context).pop();
                        })
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.greenLight,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 64),
                      ),
                      child: Text(
                        "drinkComponent.toOrder".tr(),
                        style: const TextStyle(
                            fontSize: 20, fontFamily: 'SF-UI-Text-Regular.otf'),
                      ),
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
