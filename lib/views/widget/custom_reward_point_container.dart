import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';

class CustomRewardPointContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final String price;
  final String point;
  final String oldPrice;

  const CustomRewardPointContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.point,
    required this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 380,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColor.textDisable,
            blurRadius: 10,
            offset: Offset(1, 1),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(11),
              SizedBox(
                height: 95,
                width: 255,
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 20,
                          width: 56,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xffE3DCDE),
                            borderRadius: BorderRadius.all(
                              Radius.circular(99),
                            ),
                          ),
                          child: Text(
                            point,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.dotIndicator,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(5),
                    Row(
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColor.dotIndicator,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          oldPrice,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Gap(115),
                        Image(
                          image: AssetImage(ImagePath.repeatImage),
                        ),
                        const Gap(5),
                        const Text(
                          "Repeat",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.dotIndicator,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
