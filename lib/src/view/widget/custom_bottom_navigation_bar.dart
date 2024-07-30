import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'الإعدادات',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'مواقيت الصلاة',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icon-mosque-light.svg'),
          label: 'الصفحة الرئيسية',
        ),
      ],
    );
  }
}
