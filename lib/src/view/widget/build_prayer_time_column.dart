import 'package:azkar/core/colors.dart';
import 'package:azkar/core/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column buildPrayerTimeColumn(
    String icon, String prayer, String time, bool isActive) {
  return Column(
    children: [
      Container(
        decoration: isActive
            ? BoxDecoration(
                color: ColorsManager.mainBlue,
                borderRadius: BorderRadius.circular(4))
            : null,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Column(
          children: [
            SvgPicture.asset(icon, height: Size.iconSize, width: Size.iconSize),
            const SizedBox(height: 4),
            Text(prayer,
                style: TextStyle(
                    color: isActive ? Colors.white : ColorsManager.darkgray,
                    fontSize: 16)),
            Text(time,
                style: TextStyle(
                    color: isActive ? Colors.white : ColorsManager.darkgray,
                    fontSize: 14)),
          ],
        ),
      ),
    ],
  );
}
