import 'package:coffe_flutter/common/mocks/drinks.dart';
import 'package:coffe_flutter/components/drinkComponent.dart';
import 'package:flutter/material.dart';

class FavouriteDrinks extends StatelessWidget {
  const FavouriteDrinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 46)),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              // width / height: fixed for *all* items
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, i) => DrinkComponent(index: i),
            itemCount: drinkItems.length,
          ),
        ),
      ],
    );
  }
}
