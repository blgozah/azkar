import 'package:azkar/core/colors.dart';
import 'package:flutter/material.dart';

class LocationAndDateInfo extends StatelessWidget {
  const LocationAndDateInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('المكان',
                style: TextStyle(color: ColorsManager.gray, fontSize: 12),
                textAlign: TextAlign.justify),
            Text('القاهرة ، مصر',
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.left),
          ],
        ),
        Column(
          children: [
            Text('12 ديسمبر 2023',
                style: TextStyle(color: ColorsManager.gray, fontSize: 12),
                textAlign: TextAlign.right),
            Text('1445 الاحد ربيع الأول',
                style: TextStyle(color: Colors.black, fontSize: 15)),
          ],
        ),
      ],
    );
  }
}
