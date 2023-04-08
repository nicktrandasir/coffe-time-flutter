import 'package:coffe_flutter/common/colors.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final dynamic body;
  final bool showFavourite;

  MainLayout({
    Key? key,
    required this.body,
    required this.showFavourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon:
                    const Icon(Icons.arrow_back_ios, color: MyColors.darkGray),
                onPressed: () => Navigator.of(context).pop(),
              ),
              elevation: 1.0,
              title: const Text(
                "CoffeTime",
                style: TextStyle(
                  color: MyColors.darkGray,
                  fontSize: 22,
                  fontFamily: 'Lobster',
                ),
              ),
              centerTitle: true,
              backgroundColor: MyColors.whiteGray,
              actions: showFavourite
                  ? [
                      const Icon(
                        Icons.favorite_outlined,
                        color: MyColors.red,
                      ),
                      const Padding(padding: EdgeInsets.only(right: 16))
                    ]
                  : [],
            ),
            body: body),
      ),
    );
  }
}
