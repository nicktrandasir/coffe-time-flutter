import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final Function addFavourite;
  final Function deleteFavourite;
  final bool isInFavourite;

  CustomSwitch({
    super.key,
    required this.addFavourite,
    required this.deleteFavourite,
    required this.isInFavourite,
  });

  @override
  State<CustomSwitch> createState() => _SwitchState();
}

class _SwitchState extends State<CustomSwitch> {
  bool favourite =  false;

  @override
  void initState() {
    super.initState();
    favourite = widget.isInFavourite;
  }


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
          value: favourite,
          onChanged: (bool value) {
            if (value == true) {
              widget.addFavourite();
            } else {
              widget.deleteFavourite();
            }
            print("isInFavourite: ${widget.isInFavourite} ");

            setState(
              () {
                favourite = value;
              },
            );
          },
        ),
      ],
    );
  }
}
