import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/cafetariesList.dart';
import 'package:coffe_flutter/components/layouts/mainLayout.dart';
import 'package:coffe_flutter/components/tabs.dart';
import 'package:coffe_flutter/components/map.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<StatefulWidget> {
  int activeTab = 1;

  void setActiveTab(int active) {
    setState(() {
      activeTab = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      showFavourite: true,
      body: Container(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            activeTab == 0 ? const Map() : CafetariesList(),
            Positioned(
              top: 8,
              child: CustomTabs(
                activeTab: activeTab,
                setActive: setActiveTab,
                firstIcon: const Icon(
                  Icons.place,
                  color: MyColors.black,
                  size: 18,
                ),
                secondIcon: const Icon(
                  Icons.menu_outlined,
                  color: MyColors.black,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
