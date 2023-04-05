import 'package:coffe_flutter/components/cafetaries.dart';
import 'package:coffe_flutter/pages/map.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
            child: Column(
              children: [
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100, 12, 100, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black54, width: 1),
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // Creates border
                            color: Color(0xFFC8D9AF)), //
                        tabs: [
                          Container(
                            height: 32.0,
                            child: Tab(
                                icon: Icon(Icons.place, color: Colors.black54)),
                          ),
                          Container(
                            height: 32.0,
                            child: Tab(
                                icon: Icon(Icons.menu_outlined,
                                    color: Colors.black54)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [CafetariesScreen(), MapScreen()],
                ))
              ],
            )),
      ),
    ));
  }
}
