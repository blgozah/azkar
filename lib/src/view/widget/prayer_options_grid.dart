import 'package:azkar/core/app_routes.dart';
import 'package:azkar/src/view/widget/build_grid_item.dart';
import 'package:flutter/material.dart';

class PrayerOptionsGrid extends StatelessWidget {
  const PrayerOptionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      children: [
        buildGridItem('assets/cardicon/Component 7.svg', 'أذكار المساء',
            AppRoutes.eveningPrayers),
        buildGridItem('assets/cardicon/Component 8.svg', 'أذكار الصباح',
            AppRoutes.morningPrayers),
        buildGridItem(
            'assets/cardicon/material-symbols_prayer-times-rounded.svg',
            'أذكار الصلاة',
            AppRoutes.prayerTimes),
        buildGridItem(
            'assets/cardicon/do3aa.svg', 'جميع الأدعية', AppRoutes.allDua),
        buildGridItem('assets/cardicon/prayer-beads-svgrepo-com.svg',
            'التسبيح ', AppRoutes.tasbih),
        buildGridItem('assets/cardicon/calendar-svgrepo-com.svg',
            'التقويم الهجري', AppRoutes.hijriCalendar),
        buildGridItem(
            'assets/cardicon/wpf_like (2).svg', 'المفضلة', AppRoutes.favorites),
        buildGridItem('assets/cardicon/material-symbols_mosque.svg',
            'أقرب المساجد لك', AppRoutes.nearestMosques),
        buildGridItem('assets/cardicon/note-book-svgrepo-com.svg',
            'أذكار متنوعة', AppRoutes.variousAdhkar),
      ],
    );
  }
}
