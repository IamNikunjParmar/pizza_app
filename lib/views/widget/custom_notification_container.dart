import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../../utils/color_utils.dart';

class CustomNotificationContainer extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final String? subTitle;
  final Color? subTitleColor;
  final String? time;
  final Color? containerBgColor;
  final Color? boxShadowBgColor;
  final Color? shortContainerColor;
  const CustomNotificationContainer({
    super.key,
    required this.title,
    this.subTitle,
    this.time,
    this.containerBgColor,
    this.shortContainerColor,
    this.boxShadowBgColor,
    this.titleColor,
    this.subTitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 380,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: containerBgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: boxShadowBgColor ?? const Color(0xff00000014),
            blurRadius: 10,
            offset: const Offset(1, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: shortContainerColor,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 65,
                width: 300,
                decoration: const BoxDecoration(
                    // color: AppColor.dotIndicator,
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: titleColor,
                          ),
                        ),
                        Text(
                          time ?? '',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textDisable,
                          ),
                        ),
                      ],
                    ),
                    const Gap(5),
                    Text(
                      "Donec massa nullam viverra mattis pellentesque sed urna. Rhoncus nec...",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: subTitleColor,
                      ),
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
