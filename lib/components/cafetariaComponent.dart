import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/caetaries.dart';
import 'package:coffe_flutter/pages/cafetariaDetail.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CafetariaComponent extends StatelessWidget {
  final Cafetaria item;

  const CafetariaComponent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CafetariaDetail(item: item)),
        );
      },
      child: Container(
        color: MyColors.white,
        child: Row(
          children: [
            Image(
              image: AssetImage(item.image),
              width: 126,
              height: 126,
              fit: BoxFit.fill,
            ),
            const Padding(padding: EdgeInsets.only(right: 14)),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      color: MyColors.greenLight,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 14)),
                  Text(
                    "shopComponent.ourLocation".tr(),
                    style: const TextStyle(
                        color: MyColors.lightGray, fontSize: 14),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 4)),
                  Text(
                    item.addr,
                    style: const TextStyle(
                        color: MyColors.lightGray, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 24, 0, 14),
                    child: Text(
                      "shopComponent.details".tr(),
                      style: const TextStyle(color: MyColors.whiteLightestGray),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
