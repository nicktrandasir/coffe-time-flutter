import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class DrinkComposition extends StatelessWidget {
  final String volume;
  final Icon icon;
  final Color bg;

  const DrinkComposition(
      {Key? key, required this.volume, required this.icon, required this.bg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Material(
            shape: const CircleBorder(),
            color: bg,
            child: InkWell(
              splashColor: Colors.transparent,
              // Splash color
              onTap: () {},
              child: SizedBox(
                width: 35,
                height: 35,
                child: icon,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            volume,
            style: const TextStyle(
                fontSize: 12,
                color: MyColors.darkGray,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF-UI-Text-Light.otf'),
          ),
        ],
      ),
    );
  }
}
