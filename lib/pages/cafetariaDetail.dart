import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/caetaries.dart';
import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/drinkComponent.dart';
import 'package:coffe_flutter/components/layouts/mainLayout.dart';
import 'package:coffe_flutter/components/switch.dart';
import 'package:flutter/material.dart';

class CafetariaDetail extends StatelessWidget {
  final Cafetaria item;

  const CafetariaDetail({super.key, required this.item});

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
                        item.image,
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
                            item.name,
                            style: const TextStyle(
                                color: MyColors.darkGray,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: 'Lobster'),
                          ),
                          Text(
                            item.addr,
                            style: const TextStyle(
                                color: MyColors.lightGray,
                                fontWeight: FontWeight.normal,
                                fontSize: 18.0,
                                fontFamily: 'SF-UI-Display-Regular'),
                          ),
                        ],
                      ),
                      const CustomSwitch(),
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
