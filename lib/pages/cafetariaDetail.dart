import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/caetaries.dart';
import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/drinkComponent.dart';
import 'package:coffe_flutter/components/layouts/mainLayout.dart';
import 'package:coffe_flutter/components/switch.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class CafetariaDetail extends StatefulWidget {
  final Cafetaria item;

  const CafetariaDetail({Key? key, required this.item}) : super(key: key);

  @override
  State<CafetariaDetail> createState() => _CafetariaDetail();
}

class _CafetariaDetail extends State<CafetariaDetail> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  addToFavourite() async {
    final SharedPreferences prefs = await _prefs;
    final id = int.parse(widget.item.id);
    await prefs
        .setInt(widget.item.id, id)
        .then((value) => print(prefs.getInt(widget.item.id) ?? 0));
  }

  deleteFromFavourite() async {
    final SharedPreferences prefs = await _prefs;
    await prefs
        .remove(widget.item.id)
        .then((value) => print(prefs.getInt(widget.item.id) ?? 0));
  }

//TODO: остановился тут
  getFromFavourite() async {
    final SharedPreferences prefs = await _prefs;
    var ids = prefs.getInt(widget.item.id);
    return ids;
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      showFavourite: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 308,
            collapsedHeight: 308,
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        widget.item.image,
                      ),
                    ),
                  ),
                  height: 308.0,
                ),
                Container(
                  height: 308.0,
                  decoration: const BoxDecoration(
                    color: MyColors.white,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.03),
                        Color.fromRGBO(255, 255, 255, 0.03),
                        MyColors.whiteMilk,
                      ],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      stops: [0.03, 0.2, 0.9],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            widget.item.name,
                            style: const TextStyle(
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: 'Lobster'),
                          ),
                          Text(
                            widget.item.addr,
                            style: const TextStyle(
                                color: MyColors.lightGray,
                                fontWeight: FontWeight.normal,
                                fontSize: 18.0,
                                fontFamily: 'SF-UI-Display-Regular'),
                          ),
                        ],
                      ),
                      CustomSwitch(
                          addFavourite: addToFavourite,
                          deleteFavourite: deleteFromFavourite,
                          getFromFavourite: getFromFavourite),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 200,
              maxCrossAxisExtent: 223,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 7,
              mainAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: drinkItems.length,
              (context, index) => DrinkComponent(
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
