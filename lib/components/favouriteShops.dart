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
  List<String> _favouriteShops = [];

  final bool favourite = true;

  @override
  void initState() {
    super.initState();
    _getPrefs();
  }

  void _getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getStringList('Shops') != null) {
      _favouriteShops = prefs.getStringList('Shops')!.toSet().toList();
      print('----> ${prefs.getStringList('Shops')!.toSet().toList()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return favourite
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 56)),
              Expanded(
                child: ListView.separated(
                  itemCount: cafetariaItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CafetariaComponent(item: cafetariaItems[index]);
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
