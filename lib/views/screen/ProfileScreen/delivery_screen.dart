import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/my_routes_utils.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/image_utils.dart';
import '../../widget/custom_payment_bottom.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

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
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(80),
              Center(
                child: Container(
                  height: 292,
                  width: 360,
                  decoration: const BoxDecoration(
                      //color: Colors.red,
                      ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImagePath.locationScreenImage),
                            ),
                          ),
                        ),
                        const Gap(30),
                        const Text(
                          "No addresses Added Yet",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.bottomColorTitle,
                          ),
                        ),
                        const Gap(10),
                        const Text(
                          "    Add an address to receive your orders quickly.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.textDisable,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(200),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(MyRoutes.registeredAddressScreen);
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
        ),
      ),
    );
  }
}
