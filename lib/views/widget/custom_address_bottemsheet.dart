import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/my_routes_utils.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';

class CustomAddressBottomSheet extends StatelessWidget {
  final Container container;
  final String imagePath;
  final String title;
  final String subtext;
  final String buttonTitle;
  final Function(Object?)? onPressed;
  final bool? selected;

  const CustomAddressBottomSheet({
    super.key,
    required this.container,
    required this.imagePath,
    required this.title,
    required this.subtext,
    required this.buttonTitle,
    this.onPressed,
    this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(
          15,
        ),
        Container(
          height: 6,
          width: 70,
          color: const Color(0xffDFE2EB),
        ),
        const Gap(
          16,
        ),
        Container(
          height: 320,
          width: 375,
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Your registered addresses",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 98,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                  ),
                  child: ListTile(
                    title: const Text(
                      "3891 Ranchview Dr. Richardson",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      "3891 Ranchview Dr. Richardson,\nCalifornia 62639",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.textDisable,
                      ),
                    ),
                    trailing: Column(
                      children: [
                        Radio(value: 1, groupValue: selected, onChanged: onPressed),
                      ],
                    ),
                    leading: Column(
                      children: [
                        Image(image: AssetImage(ImagePath.home3Image)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
