import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';

class CustomAddressWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final int value;
  final Function(int?)? onChanged;
  const CustomAddressWidget({
    super.key,
    required this.selected,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    this.onChanged, required this.value,
  });

  final int selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 98,
        width: 375,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffEEEEEF),
            width: 1,
          ),
        ),
        child: Container(
          height: 50,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                        ),
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 205,
                      decoration: const BoxDecoration(),
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
                            subTitle,
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColor.textDisable,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Radio(
                      value: value,
                      groupValue: selected,
                      onChanged: onChanged,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
