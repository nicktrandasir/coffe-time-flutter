import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final Function addFavourite;
  final Function deleteFavourite;
  final Function getFromFavourite;

  CustomSwitch({
    super.key,
    required this.addFavourite,
    required this.deleteFavourite,
    required this.getFromFavourite,
  });

  @override
  State<CustomSwitch> createState() => _SwitchState();
}

class _SwitchState extends State<CustomSwitch> {
  bool light0 = false;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(
          Icons.favorite,
          color: MyColors.red,
        );
      }
      return const Icon(Icons.favorite_outline);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          thumbIcon: thumbIcon,
          activeColor: MyColors.white,
          activeTrackColor: MyColors.white,
          inactiveTrackColor: MyColors.white,
          value: light0,
          onChanged: (bool value) {
            if (value == true) {
              widget.addFavourite();
            } else {
              widget.deleteFavourite();
            }

            setState(
              () {
                light0 = value;
                print(widget.getFromFavourite());
              },
            );
          },
        ),
      ],
    );
  }
}
