import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class CustomTabs extends StatelessWidget {
  final Function setActive;
  late final int activeTab;
  final Icon firstIcon;
  final Icon secondIcon;

  CustomTabs(
      {Key? key,
      required this.setActive,
      required this.activeTab,
      required this.firstIcon,
      required this.secondIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: MyColors.black, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(padding: EdgeInsets.only(left: 2)),
          InkWell(
              onTap: () {
                setActive(0);
              },
              child: Container(
                  width: 62,
                  height: 26.0,
                  decoration: BoxDecoration(
                      color: activeTab == 0
                          ? MyColors.greenLight
                          : MyColors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: firstIcon)),
          InkWell(
            onTap: () {
              setActive(1);
            },
            child: Container(
                width: 62,
                height: 26.0,
                decoration: BoxDecoration(
                    color: activeTab == 1
                        ? MyColors.greenLight
                        : MyColors.transparent,
                    borderRadius: BorderRadius.circular(50)),
                child: secondIcon),
          ),
          const Padding(padding: EdgeInsets.only(right: 2)),
        ],
      ),
    );
  }
}
