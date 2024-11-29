import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/color_utils.dart';
import 'package:pizza_app_ui/utils/image_utils.dart';

import '../../../utils/my_routes_utils.dart';
import '../../widget/custom_reward_point_container.dart';

class RewardPointScreen extends StatelessWidget {
  const RewardPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColorScreen,
      appBar: AppBar(
        backgroundColor: AppColor.bgColorScreen,
        title: const Text(
          "RewardScreen",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff0A0D14),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(MyRoutes.homeScreen);
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 161,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.splashBgImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 129,
                      width: 287,
                      decoration: const BoxDecoration(),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(ImagePath.reImage),
                          ),
                          Gap(5),
                          const Text(
                            "Your Point: 70",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColor.bottomColorTitle,
                            ),
                          ),
                          //Gap(5),
                          const Text(
                            "Only 30 points away from a free pizza!",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.textDisable,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(16),
            const Text(
              "Point Story",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(16),
            CustomRewardPointContainer(
              imagePath: ImagePath.pizzasImage4,
              title: "1 June 2024 - 16:03",
              subTitle: 'Margherita Pizza, Coca Cola 50ml. Pepperoni Sticks',
              price: '£8.99',
              point: '5 Point',
              oldPrice: '£10',
            ),
            const Gap(16),
            CustomRewardPointContainer(
              imagePath: ImagePath.pizzasImage4,
              title: "1 June 2024 - 16:03",
              subTitle: 'Bosclola Pizza, Coca Cola 50ml. Pepperoni Sticks',
              price: '£12.9',
              point: '5 Point',
              oldPrice: '£10',
            ),
          ],
        ),
      ),
    );
  }
}
