import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/pages/drinkDetail.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrinkComponent extends StatefulWidget {
  final Drink item;

  const DrinkComponent({Key? key, required this.item}) : super(key: key);

  @override
  State<DrinkComponent> createState() => _DrinkComponent();
}

class _DrinkComponent extends State<DrinkComponent> {
  bool _isFavourite = false;
  List<String> _favouriteDrinks = [];

  @override
  void initState() {
    super.initState();
    _getPrefs();
  }

  void _addItem() {
    if (widget.item.id.isNotEmpty) {
      setState(() => _favouriteDrinks.add(widget.item.id));
      _setPrefs();
      _isFavourite = true;
    }
  }

  void _removeItem() {
    setState(() => _favouriteDrinks.remove(widget.item.id));
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
        ?.firstWhere((element) => element == widget.item.id);

    setState(() {
      _isFavourite = isInFavourite != null ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      alignment: Alignment.center,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrinkDetailScreen(product: widget.item),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.item.name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: MyColors.lightGray,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.item.type,
                    style: const TextStyle(
                        fontSize: 12,
                        color: MyColors.lightGray,
                        fontWeight: FontWeight.normal),
                  ),
                  Center(
                    child: Image(
                      image: AssetImage(widget.item.image),
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.item.price,
                          style: const TextStyle(
                              fontSize: 24,
                              color: MyColors.greenLight,
                              fontWeight: FontWeight.bold),
                        ),
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
