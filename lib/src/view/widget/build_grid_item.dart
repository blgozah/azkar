import 'package:azkar/core/colors.dart';
import 'package:azkar/core/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget buildGridItem(String icon, String title, String routeName) {
  return InkWell(
    onTap: () {
      Get.toNamed(routeName);
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: Size.gridIconSize,
            width: Size.gridIconSize,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: ColorsManager.mainBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
