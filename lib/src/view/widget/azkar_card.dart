import 'package:azkar/core/colors.dart';
import 'package:azkar/src/controller/azkar_card_controller.dart';
import 'package:azkar/src/view/widget/azkar_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key});

  @override
  Widget build(BuildContext context) {
    final AzkarCardController controller = Get.put(AzkarCardController());

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: ColorsManager.veryLightBlue,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  SvgPicture.asset(
                    'assets/Frame 47.svg',
                    width: 183.0,
                    height: 13.0,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'اللهم اجعل في قلبي نوراً، وفي لساني نوراً، وفي سمعي نوراً، وفي بصري نوراً، ومن فوقي نوراً، ومن تحتي نوراً، وعن يميني نوراً، وعن شمالي نوراً، ومن بين يدي نوراً، ومن خلفي نوراً، واجعل في نفسي نوراً، وأعظم لي نوراً، واجعل لي نوراً، واجعلني نوراً، اللهم أعطني نوراً، واجعل في عصبي نوراً، وفي لحمي نوراً، وفي دمي نوراً، وفي شعري نوراً، وفي بشري نوراً.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, color: ColorsManager.darkBlue),
                  ),
                  const SizedBox(height: 16.0),
                  SvgPicture.asset(
                    'assets/Frame 48.svg',
                    width: 183.0,
                    height: 13.0,
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                'من قالها حين يصبح أجير من الجن حتى يمسي ومن قالها حين يمسي أجير من الجن حتى يصبح',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 12.0,
                    color: ColorsManager.darkgray,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: SizedBox(
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/Vector (2).svg',
                        width: 20.0,
                        height: 20.0,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/Vector (1).svg',
                        width: 20.0,
                        height: 20.0,
                      ),
                      onPressed: () {},
                    ),
                    const AzkarCounter(),
                    Obx(() => IconButton(
                          icon: SvgPicture.asset(
                            controller.isLiked.value
                                ? 'assets/wpf_like.svg'
                                : 'assets/wpf_like (1).svg',
                            width: 24.0,
                            height: 24.0,
                          ),
                          onPressed: controller.toggleLike,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
