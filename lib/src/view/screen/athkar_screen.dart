import 'package:azkar/core/app_routes.dart';
import 'package:azkar/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/azkar_card.dart';

class AthkarScreen extends StatelessWidget {
  const AthkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'أذكار الصباح',
              style: TextStyle(
                  color: ColorsManager.mainBlue, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_forward,
                color: ColorsManager.mainBlue,
              ),
              onPressed: () {
                Get.toNamed(AppRoutes.home);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AzkarCard(), AzkarCard()],
          ),
        ),
      ),
    );
  }
}
