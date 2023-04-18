import 'package:coffe_flutter/common/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final dynamic body;

  AuthLayout({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      MyColors.noneRGBO,
                      MyColors.yellowLightRGBO,
                    ]),
              ),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 120)),
                   Center(
                    child: Text('layout.title'.tr(),
                        style: const TextStyle(
                            color: MyColors.white,
                            fontSize: 64,
                            fontFamily: 'Lobster')),
                  ),
                  Container(
                    transform: Matrix4.translationValues(30.0, -10.0, 0.0),
                    child: Text('layout.subTitle'.tr(),
                        style:const TextStyle(
                          color: MyColors.white,
                          fontSize: 16,
                          fontFamily: 'SF-UI-Medium',
                        )),
                  ),
                  body
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
