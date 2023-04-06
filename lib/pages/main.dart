import 'package:coffe_flutter/components/cafetaries.dart';
import 'package:coffe_flutter/pages/map.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<StatefulWidget> {
  int activeTab = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF474747)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 1.0,
          title: const Text("CoffeTime",
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 22,
                fontFamily: 'Lobster',
              )),
          centerTitle: true,
          backgroundColor: Color(0xFFF6F6F6),
        ),
        body: Container(
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                activeTab == 0 ? MapScreen() : CafetariesScreen(),
                Positioned(
                  top: 8,
                  child: Container(
                    width: 130,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black54, width: 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 2)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                activeTab = 0;
                              });
                            },
                            child: Container(
                              width: 62,
                              height: 26.0,
                              decoration: BoxDecoration(
                                  color: activeTab == 0
                                      ? Color(0xFFC8D9AF)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.place,
                                color: Colors.black54,
                                size: 18,
                              ),
                            )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              activeTab = 1;
                            });
                          },
                          child: Container(
                              width: 62,
                              height: 26.0,
                              decoration: BoxDecoration(
                                  color: activeTab == 1
                                      ? Color(0xFFC8D9AF)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.menu_outlined,
                                  color: Colors.black54, size: 24,)),
                        ),
                        Padding(padding: EdgeInsets.only(right: 2)),
                      ],
                    ),
                  ),
                ),

                //     child: TabBarView(
                //   children: [CafetariesScreen(), MapScreen()],
                // ))
              ],
            )),
      ),
    ));
  }
}
