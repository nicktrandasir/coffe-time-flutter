import 'package:coffe_flutter/common/mocks/caetaries.dart';
import 'package:coffe_flutter/components/cafetariaComponent.dart';
import 'package:coffe_flutter/components/empty.dart';
import 'package:flutter/material.dart';

class FavouriteShops extends StatelessWidget {
  const FavouriteShops({Key? key}) : super(key: key);
final bool favourite = true;
  @override
  Widget build(BuildContext context) {
    return favourite ? Column(
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
    ) : const Empty(shop: true,);
  }
}
