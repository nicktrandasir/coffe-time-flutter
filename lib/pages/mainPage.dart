import 'package:coffe_flutter/pages/register.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class ListItems {
  String image;
  String name;
  String addr;
  String id;

  ListItems(
      {required this.name,
      required this.addr,
      required this.image,
      required this.id});
}

List<ListItems> listItems = [
  ListItems(
      image: "assets/images/1.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "1"),
  ListItems(
      image: "assets/images/2.jpg",
      name: "Coffee",
      addr: 'ул.25 Октября д.18/5',
      id: "2"),
  ListItems(
      image: "assets/images/3.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.Ленина д.23',
      id: "3"),
  ListItems(
      image: "assets/images/4.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.25 Октября д.2',
      id: "4"),
  ListItems(
      image: "assets/images/5.jpg",
      name: "Lattelady",
      addr: 'ул.Манойлова 76 д.2',
      id: "5"),
  ListItems(
      image: "assets/images/6.jpg",
      name: "Lattelady",
      addr: 'ул.Ленина д.23',
      id: "6"),
  ListItems(
      image: "assets/images/7.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "7"),
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF474747)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("CoffeTime",
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 22,
                fontFamily: 'Lobster',
              )),
          centerTitle: true,
          backgroundColor: Color(0xFFF6F6F6),
        ),
        resizeToAvoidBottomInset: false,
        body: ListView.separated(
          itemCount: listItems.length,
          padding: EdgeInsets.only(top: 16),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              //height: 126,
              color: Colors.white,
              //  margin: EdgeInsets.only(top: 16),
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
                      style: TextStyle(
                        color: Color(0xFFC8D9AF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 14)),
                    Text(
                      "мы находимся:",
                      style: TextStyle(color: Color(0xFF717171), fontSize: 14),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 4)),
                    Text(
                      listItems[index].addr,
                      style: TextStyle(color: Color(0xFF717171), fontSize: 16),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 4)),
                    ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        )
                      },
                      child: Text( "подробнее   >", style: TextStyle(color: Color(0xFFBBBBBB)),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(234, 14), // Button Minimum Width
                        elevation: 0, // Elevation
                        padding: const EdgeInsets.all(0), // Text Padding
                        primary: Colors.transparent, // P
                        alignment:Alignment.centerRight,
                      ),
                    )
                  ],
                )
              ]),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 8,
            color: Colors.transparent,
          ),
        ));
  }
}
