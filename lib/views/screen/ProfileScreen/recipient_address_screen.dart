import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/my_routes_utils.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/image_utils.dart';
import '../../widget/custom_payment_bottom.dart';

class RecipientAddressScreen extends StatelessWidget {
  RecipientAddressScreen({super.key});

  bool isEnable = false;

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
            "Recepient Address",
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
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Search Location",
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: AppColor.textDisable,
                      ),
                      suffixIcon: Image(
                        image: AssetImage(ImagePath.searchImage),
                        color: (isEnable == true) ? AppColor.dotIndicator : AppColor.textDisable,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        borderSide: BorderSide(
                          color: AppColor.dotIndicator,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        borderSide: BorderSide(
                          color: AppColor.checkBoxColor,
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Container(
                    height: 64,
                    width: 380,
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                    ),
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.my_location_rounded,
                            color: Color(0xff222226),
                            size: 20,
                          ),
                          title: Text(
                            "Use Current Location",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff222226),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xffD0D7DD),
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
