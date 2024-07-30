import 'package:azkar/src/view/screen/athkar_screen.dart';
import 'package:azkar/src/view/screen/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const home = '/';
  static const eveningPrayers = '/evening_prayers';
  static const morningPrayers = '/athkar_screen';
  static const prayerTimes = '/prayer_times';
  static const allDua = '/all_dua';
  static const tasbih = '/tasbih';
  static const hijriCalendar = '/hijri_calendar';
  static const favorites = '/favorites';
  static const nearestMosques = '/nearest_mosques';
  static const variousAdhkar = '/various_adhkar';
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.eveningPrayers, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.morningPrayers, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.prayerTimes, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.allDua, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.tasbih, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.hijriCalendar, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.favorites, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.nearestMosques, page: () => const AthkarScreen()),
    GetPage(name: AppRoutes.variousAdhkar, page: () => const AthkarScreen()),
  ];
}
