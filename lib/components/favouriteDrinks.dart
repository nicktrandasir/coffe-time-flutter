import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/drinkComponent.dart';
import 'package:coffe_flutter/components/empty.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteDrinks extends StatefulWidget {
  const FavouriteDrinks({Key? key}) : super(key: key);

  @override
  State<FavouriteDrinks> createState() => _FavouriteDrinks();
}

class _FavouriteDrinks extends State<FavouriteDrinks> {
  List<Drink> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _getPrefs();
  }

  void _getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getStringList('Drinks') != null) {
      var favouriteDrinkId = prefs.getStringList('Drinks')!.toSet().toList();

      List<Drink> filteredArr = [];
      for (var drink in drinkItems) {
        if (favouriteDrinkId.contains(drink.id)) {
          filteredArr.add(drink);
        }
      }
      setState(() {
        _filteredItems = filteredArr;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _filteredItems.isNotEmpty
        ? Column(
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 46)),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, i) => DrinkComponent(item: _filteredItems[i]),
            itemCount: _filteredItems.length,
          ),
        ),
      ],
    )  : const Empty(
      shop: false,
    );
  }
}
