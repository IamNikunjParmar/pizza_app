import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/my_routes_utils.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/image_utils.dart';
import '../../widget/custom_payment_bottom.dart';

class DeliveryRegisteredScreen extends StatelessWidget {
  const DeliveryRegisteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        appBar: AppBar(
          backgroundColor: AppColor.bgColorScreen,
          title: const Text(
            "Delivery Location",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff0A0D14),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 18,
            bottom: 50,
            right: 18,
            left: 18,
          ),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Registered Addresses",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  Container(
                    height: 98,
                    width: 380,
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
                          Image(
                            image: AssetImage(ImagePath.editImage),
                            color: AppColor.dotIndicator,
                          ),
                        ],
                      ),
                      leading: Column(
                        children: [
                          Image(image: AssetImage(ImagePath.home2Image)),
                        ],
                      ),
                    ),
                  ),
                  const Gap(8),
                  Container(
                    height: 98,
                    width: 380,
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
                          Image(
                            image: AssetImage(ImagePath.editImage),
                            color: AppColor.dotIndicator,
                          ),
                        ],
                      ),
                      leading: Column(
                        children: [
                          Image(image: AssetImage(ImagePath.home3Image)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(MyRoutes.recipientAddressScreen);
                    },
                    child: Container(
                      height: 52,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.dotIndicator,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Text(
                        "Add New Shipping Address",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
