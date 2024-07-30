import 'package:azkar/src/view/widget/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:azkar/core/size.dart';
import '../widget/all_worship_container.dart';
import '../widget/location_and_date_info.dart';
import '../widget/next_prayer_card.dart';
import '../widget/prayer_options_grid.dart';
import '../widget/prayer_times.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              LocationAndDateInfo(),
              SizedBox(height: 8),
              PrayerTimes(),
              SizedBox(height: 8),
              NextPrayerCard(),
              SizedBox(height: 16),
              AllWorshipContainer(),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.all(Size.paddingSize),
                child: PrayerOptionsGrid(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
