import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/my_routes_utils.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/image_utils.dart';
import '../../widget/custom_reward_point_container.dart';

class OrderHistoryScreen2 extends StatefulWidget {
  const OrderHistoryScreen2({super.key});

  @override
  State<OrderHistoryScreen2> createState() => _OrderHistoryScreen2State();
}

class _OrderHistoryScreen2State extends State<OrderHistoryScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
            "Order History",
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
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Order(2)",
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
                point: 'Pickup',
                oldPrice: '£10',
              ),
              const Gap(16),
              CustomRewardPointContainer(
                imagePath: ImagePath.pizzasImage4,
                title: "1 June 2024 - 16:03",
                subTitle: 'Bosclola Pizza, Coca Cola 50ml. Pepperoni Sticks',
                price: '£12.9',
                point: 'Delivery',
                oldPrice: '£10',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
