import 'package:coffe_flutter/components/mocks/caetaries.dart';
import 'package:coffe_flutter/pages/cafetaria.dart';
import 'package:flutter/material.dart';

class CafetariesScreen extends StatefulWidget {
  @override
  State<CafetariesScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<CafetariesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Expanded(
              child: ListView.separated(
                itemCount: listItems.length,
                padding: EdgeInsets.only(top: 16),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.white,
                    child: Row(children: [
                      Image(
                        image: AssetImage(listItems[index].image),
                        width: 126,
                        height: 126,
                        fit: BoxFit.fill,
                      ),
                      Padding(padding: EdgeInsets.only(right: 14)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Padding(padding: EdgeInsets.only(bottom: 14)),

                          Text(
                            listItems[index].name,
                            style: const TextStyle(
                              color: Color(0xFFC8D9AF),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 14)),
                          const Text(
                            "мы находимся:",
                            style:
                            TextStyle(color: Color(0xFF717171), fontSize: 14),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 4)),
                          Text(
                            listItems[index].addr,
                            style:
                            TextStyle(color: Color(0xFF717171), fontSize: 16),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 4)),
                          ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CafetariaScreenState(
                                        item: listItems[index])),
                              )
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(234, 14),
                              // Button Minimum Width
                              elevation: 0,
                              padding: const EdgeInsets.all(0),
                              primary: Colors.transparent,
                              alignment: Alignment.centerRight,
                            ),
                            child: const Text(
                              "подробнее   >",
                              style: TextStyle(color: Color(0xFFBBBBBB)),
                            ),
                          )
                        ],
                      )
                    ]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 8,
                  color: Colors.transparent,
                ),
              ))
        ],
      ),
    );
  }
}
