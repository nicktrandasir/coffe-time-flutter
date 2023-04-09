import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  final bool shop;

  const Empty({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/empty.png'),
            height: 142,
            width: 148,
          ),
          const Padding(padding: EdgeInsets.only(top: 110)),
          Text(
            "Добавьте ${shop ? "кофейню" : "напиток"} в избранное",
            style: const TextStyle(color: MyColors.lightGray, fontSize: 16),
          )
        ],
      ),
    );
  }
}
