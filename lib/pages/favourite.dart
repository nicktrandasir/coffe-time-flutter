import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/favouriteDrinks.dart';
import 'package:coffe_flutter/components/favouriteShops.dart';
import 'package:coffe_flutter/components/layouts/mainLayout.dart';
import 'package:coffe_flutter/components/tabs.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<StatefulWidget> {
  int activeTab = 0;

  void setActiveTab(int active) {
    setState(() {
      activeTab = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Container(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            activeTab == 0 ? const FavouriteShops() : FavouriteDrinks(),
            Positioned(
              top: 8,
              child: CustomTabs(
                activeTab: activeTab,
                setActive: setActiveTab,
                firstIcon: const Icon(
                  Icons.home,
                  color: MyColors.black,
                  size: 24,
                ),
                secondIcon: const Icon(
                  Icons.coffee_rounded,
                  color: MyColors.black,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
