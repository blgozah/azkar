import 'package:azkar/core/colors.dart';
import 'package:flutter/material.dart';

class NextPrayerCard extends StatelessWidget {
  const NextPrayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          colors: [ColorsManager.blue3, ColorsManager.blue2.withOpacity(0.0)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.70, 5],
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 165.0,
            width: 350,
            child: Stack(
              children: [
                const Positioned(
                  left: 20.0,
                  top: 15.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الظهر',
                        style: TextStyle(
                          color: ColorsManager.darkBlue,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '11:45',
                        style: TextStyle(
                          color: ColorsManager.darkBlue,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'الصلاة التالية: 2:50',
                        style: TextStyle(
                          color: ColorsManager.darkBlue,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Image.asset('assets/2.png'),
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Image.asset('assets/1.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
