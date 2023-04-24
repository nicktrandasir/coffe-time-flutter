import 'package:coffe_flutter/common/mocks/caetaries.dart';
import 'package:coffe_flutter/components/cafetariaComponent.dart';
import 'package:coffe_flutter/components/empty.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteShops extends StatefulWidget {
  const FavouriteShops({Key? key}) : super(key: key);

  @override
  State<FavouriteShops> createState() => _FavouriteShops();
}

class _FavouriteShops extends State<FavouriteShops> {
  List<Cafetaria> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _getPrefs();
  }

  void _getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getStringList('Shops') != null) {
      var favouriteShopsId = prefs.getStringList('Shops')!.toSet().toList();

      List<Cafetaria> filteredArr = [];
      for (var cafetaria in cafetariaItems) {
        print("итерация cafetaria : ${cafetaria.id} ");

        if (favouriteShopsId.contains(cafetaria.id)) {
          filteredArr.add(cafetaria);
        }
      }
      print('filteredArr: $filteredArr');

      setState(() {
        _filteredItems = filteredArr;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _filteredItems.isNotEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 56)),
              Expanded(
                child: ListView.separated(
                  itemCount: _filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CafetariaComponent(item: _filteredItems[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    height: 8,
                    color: Colors.transparent,
                  ),
                ),
              )
            ],
          )
        : const Empty(
            shop: true,
          );
  }
}
