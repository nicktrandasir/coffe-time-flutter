import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool isFavourite;
  final Function addToFavourite;
  final Function removeFromFavourite;

  CustomSwitch({
    super.key,
    required this.isFavourite,
    required this.addToFavourite,
    required this.removeFromFavourite,
  });

  @override
  State<CustomSwitch> createState() => _SwitchState();
}

class _SwitchState extends State<CustomSwitch> {

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
          value: widget.isFavourite,
          onChanged: (bool value) {
            if (value == true) {
              widget.addToFavourite();
            } else {
              widget.removeFromFavourite();
            }
          },
        ),
      ],
    );
  }
}
