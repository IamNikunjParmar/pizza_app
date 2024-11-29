import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/views/widget/custom_bottom_sheet.dart';

import '../../../../utils/color_utils.dart';
import '../../../../utils/image_utils.dart';
import '../../../utils/my_routes_utils.dart';
import '../../widget/custom_notification_container.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
            "Notifications",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff0A0D14),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 380,
                        width: 400,
                        decoration: const BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: CustomBottomSheet(
                          container: Container(),
                          imagePath: ImagePath.deleteNotificationImage,
                          title: "Are You Sure You Want to \n Delete All Notifications?",
                          subtext:
                              "Once you perform this action, all notifications \n                  will be permanently deleted.",
                          buttonTitle: "Continue",
                          onPressed: () {
                            //    Navigator.of(context).pushReplacementNamed(MyRoutes.orderTrackingScreen);
                          },
                        ),
                      );
                    });
              },
              icon: Image.asset(ImagePath.notificationDeleteImage),
            ),
          ],
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Read All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.dotIndicator,
                    ),
                  ),
                ],
              ),
              Gap(8),
              CustomNotificationContainer(
                title: 'Notifications Title',
                time: '47 min.',
                boxShadowBgColor: AppColor.textDisable,
                containerBgColor: AppColor.whiteColor,
                shortContainerColor: AppColor.dotIndicator,
              ),
              Gap(16),
              CustomNotificationContainer(
                title: 'Notifications Title',
                time: '47 min.',
                boxShadowBgColor: AppColor.textDisable,
                containerBgColor: AppColor.whiteColor,
                shortContainerColor: AppColor.dotIndicator,
              ),
              Gap(16),
              Text(
                'Tomorrow',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(8),
              CustomNotificationContainer(
                title: 'Notifications Title',
                // time: '47 min.',
                titleColor: AppColor.textDisable,
                subTitleColor: AppColor.textDisable,
                // boxShadowBgColor: AppColor.textDisable,
                containerBgColor: AppColor.whiteColor,
                shortContainerColor: AppColor.textDisable,
              ),
              Gap(16),
              CustomNotificationContainer(
                title: 'Notifications Title',
                // time: '47 min.',
                titleColor: AppColor.textDisable,
                subTitleColor: AppColor.textDisable,
                // boxShadowBgColor: AppColor.textDisable,
                containerBgColor: AppColor.whiteColor,
                shortContainerColor: AppColor.textDisable,
              ),
              Gap(16),
              CustomNotificationContainer(
                title: 'Notifications Title',
                //  time: '47 min.',
                titleColor: AppColor.textDisable,
                subTitleColor: AppColor.textDisable,
                //boxShadowBgColor: AppColor.textDisable,
                containerBgColor: AppColor.whiteColor,
                shortContainerColor: AppColor.textDisable,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
