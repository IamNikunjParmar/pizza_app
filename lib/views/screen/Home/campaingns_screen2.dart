import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/image_utils.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/my_routes_utils.dart';

class CampaignsScreen2 extends StatefulWidget {
  const CampaignsScreen2({super.key});

  @override
  State<CampaignsScreen2> createState() => _CampaignsScreen2State();
}

class _CampaignsScreen2State extends State<CampaignsScreen2> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColorScreen,
      appBar: AppBar(
        backgroundColor: AppColor.bgColorScreen,
        title: const Text(
          "Campaigns",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff0A0D14),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(MyRoutes.homeScreen);
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 48,
              width: 380,
              //  padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: AppColor.checkBoxColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: TabBar(
                dividerHeight: 0,
                unselectedLabelColor: const Color(0xff525866),
                padding: const EdgeInsets.all(5),
                controller: _tabController,
                labelColor: AppColor.dotIndicator,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: AppColor.whiteColor,
                ),
                tabs: const [
                  Tab(
                    text: "Campaigns",
                  ),
                  Tab(
                    text: "Expired Campaigns",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
                right: 16,
                left: 16,
                bottom: 0,
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    height: 500,
                    width: 800,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "All Campaings(2)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(16),
                        Transform.scale(
                          scale: 1.21,
                          child: Container(
                            height: 125,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: AssetImage(ImagePath.bannerImage),
                              ),
                            ),
                          ),
                        ),
                        const Gap(16),
                        Transform.scale(
                          scale: 1.21,
                          child: Container(
                            height: 125,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: AssetImage(ImagePath.bannerImage),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    width: 800,
                    //color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Expired Campaings(1)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(16),
                        Transform.scale(
                          scale: 1.21,
                          child: Container(
                            height: 125,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: AssetImage(ImagePath.disableImage),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
