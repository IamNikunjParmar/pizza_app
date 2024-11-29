import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/color_utils.dart';

class CustomFavouriteContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const CustomFavouriteContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 380,
      padding: const EdgeInsets.all(15),
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.textDisable,
            blurRadius: 10,
            offset: Offset(1, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(10),
          Container(
            height: 72,
            width: 240,
            decoration: const BoxDecoration(
                // color: Colors.amber,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.textDisable,
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.dotIndicator,
                      ),
                    ),
                    const Icon(
                      Icons.add_circle_outline_rounded,
                      color: AppColor.dotIndicator,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
