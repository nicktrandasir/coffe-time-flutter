import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          thumbIcon: thumbIcon,
          activeColor: Colors.white,
          activeTrackColor: Colors.white,
          activeThumbImage: AssetImage('assets/icons/icon_swich_active.png'),
          inactiveTrackColor: Colors.white,
          value: light1,

          onChanged: (bool value) {
            setState(() {
              light0 = value;
            });
          },
        ),
      ],
    );
  }
}
