import 'package:azkar/core/colors.dart';
import 'package:azkar/core/size.dart';
import 'package:azkar/src/view/widget/build_prayer_time_column.dart';
import 'package:flutter/material.dart';

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.veryLightBlue,
      padding: const EdgeInsets.all(Size.paddingSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildPrayerTimeColumn(
              'assets/ion_moon-outline.svg', 'العشاء', '11:45', false),
          buildPrayerTimeColumn(
              'assets/mingcute_sunset-line.svg', 'المغرب', '11:45', false),
          buildPrayerTimeColumn(
              'assets/ph_cloud-sun-bold.svg', 'العصر', '11:45', false),
          buildPrayerTimeColumn(
              'assets/ph_sun-bold.svg', 'الظهر', '11:45', true),
          buildPrayerTimeColumn('assets/Vector.svg', 'الشروق', '11:45', false),
          buildPrayerTimeColumn(
              'assets/radix-icons_moon.svg', 'الفجر', '11:45', false),
        ],
      ),
    );
  }
}
