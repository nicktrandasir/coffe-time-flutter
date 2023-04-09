import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/common/mocks/caetaries.dart';
import 'package:coffe_flutter/pages/cafetariaDetail.dart';
import 'package:flutter/material.dart';

class CafetariaComponent extends StatelessWidget {
  final Cafetaria item;

  CafetariaComponent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Column(
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
              const Text(
                "мы находимся:",
                style: TextStyle(color: MyColors.lightGray, fontSize: 14),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 4)),
              Text(
                item.addr,
                style: const TextStyle(color: MyColors.lightGray, fontSize: 16),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 4)),
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CafetariaDetail(item: item)),
                  ),
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(234, 14),
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  backgroundColor: Colors.transparent,
                  alignment: Alignment.centerRight,
                ),
                child: const Text(
                  "подробнее   >",
                  style: TextStyle(color: MyColors.whiteLightestGray),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
