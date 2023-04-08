import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/mocks/drinks.dart';
import 'package:coffe_flutter/pages/drinkDetailScreen.dart';
import 'package:flutter/material.dart';

class DrinkComponent extends StatelessWidget {
  final int index;

  DrinkComponent({super.key, required this.index});

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
                    builder: (context) =>
                        DrinkDetailScreen(product: drinkItems[index])),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    drinkItems[index].name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: MyColors.lightGray,
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 2)),
                  Text(
                    drinkItems[index].type,
                    style: const TextStyle(
                        fontSize: 12,
                        color: MyColors.lightGray,
                        fontWeight: FontWeight.normal),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 17)),
                  Image(
                    image: AssetImage(drinkItems[index].image),
                    width: 160,
                    height: 119,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 6)),
                  Row(
                    children: [
                      Text(
                        drinkItems[index].price,
                        style: const TextStyle(
                            fontSize: 24,
                            color: MyColors.greenLight,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 96),
                      const Icon(
                        Icons.favorite_border,
                        color: MyColors.gray,
                        size: 22,
                      ),
                    ],
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
