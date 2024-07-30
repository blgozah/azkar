import 'package:azkar/core/colors.dart';
import 'package:azkar/src/controller/azkar_counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AzkarCounter extends StatelessWidget {
  const AzkarCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final AzkarCounterController controller = Get.put(AzkarCounterController());

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: controller.decrementCount,
        child: Obx(() => Container(
              width: 40,
              height: 40,
              decoration: controller.count > 0
                  ? BoxDecoration(
                      border: Border.all(
                        color: ColorsManager.mainBlue,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    )
                  : const BoxDecoration(
                      color: ColorsManager.mainBlue,
                      shape: BoxShape.circle,
                    ),
              child: Center(
                child: controller.count > 0
                    ? Text(
                        controller.count.toString(),
                        style: const TextStyle(
                          color: ColorsManager.mainBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 20,
                      ),
              ),
            )),
      ),
    );
  }
}
