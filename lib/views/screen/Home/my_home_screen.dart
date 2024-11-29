import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/modal/catgory_data_modal.dart';
import 'package:pizza_app_ui/utils/image_utils.dart';
import 'package:pizza_app_ui/utils/my_routes_utils.dart';

import '../../../helper/firebase_auth _helper.dart';
import '../../../modal/user.dart';
import '../../../utils/color_utils.dart';
import '../../widget/custom_address_bottemsheet.dart';
import '../../widget/custom_address_container.dart';
import '../../widget/custom_bottom_sheet.dart';
import 'home_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    List<CategoryData> basketItem = [];

    List<CategoryData> getSelectedCategoryList() {
      switch (selectedIndex) {
        case 0:
          return products;
        case 1:
          return pizzaList;
        case 2:
          return starterList;
        case 3:
          return saladList;
        default:
          return products;
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.bgColorScreen,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -100),
                        child: Image(
                          alignment: Alignment.topCenter,
                          image: AssetImage(ImagePath.signInBgImage),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5C0319),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(ImagePath.menuImage),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(16),
                              Image(
                                image: AssetImage(ImagePath.appNameImage),
                                width: 96,
                                height: 32,
                              ),
                              const SizedBox(width: 130),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(MyRoutes.notificationScreen);
                                },
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5C0319),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(ImagePath.notificationImage),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(8),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(MyRoutes.basketScreen);
                                },
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5C0319),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(ImagePath.cartImage),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              int selected = 0;
                              int selected1 = 0;

                              void setSelectButton(int val) {
                                setState(() {
                                  selected = val;
                                  // selected1 = val;
                                });
                              }

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
                                      child: Column(
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
                                                CustomAddressWidget(
                                                  onChanged: (val) {
                                                    setSelectButton(val!);
                                                  },
                                                  selected: selected,
                                                  imagePath: ImagePath.home2Image,
                                                  title: "221 Baker Street, London",
                                                  subTitle: "3891 Ranchview Dr. Richardson, California 62639",
                                                  value: 0,
                                                ),
                                                CustomAddressWidget(
                                                  selected: selected,
                                                  value: 1,
                                                  imagePath: ImagePath.buildingImage,
                                                  title: '147 Love Street, London',
                                                  subTitle: '3891 Ranchview California 62639',
                                                  onChanged: (val) {
                                                    setSelectButton(val!);
                                                  },
                                                ),
                                                const Gap(8),
                                                const SizedBox(
                                                  height: 56,
                                                  width: 385,
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                          left: 25,
                                                          top: 5,
                                                          bottom: 5,
                                                        ),
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 30,
                                                          color: AppColor.dotIndicator,
                                                        ),
                                                      ),
                                                      Gap(5),
                                                      Text(
                                                        "Add New Address",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14,
                                                          color: AppColor.bottomColorTitle,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(ImagePath.locationImage),
                                  height: 32,
                                  width: 32,
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "221 Baker Street, London",
                                      style: TextStyle(
                                        color: Color(0xff5C0319),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "Home Delivery",
                                      style: TextStyle(
                                        color: Color(0xff75757C),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Transform.translate(
                                  offset: const Offset(-5, -10),
                                  child: Image(
                                    image: AssetImage(ImagePath.downArrowImage),
                                    height: 16,
                                    width: 16,
                                  ),
                                ),
                                const Gap(80),
                                GestureDetector(
                                  onTap: () async {
                                    FireBaseHelper.fireBaseHelper.logOutUser().then(
                                      (value) {
                                        Navigator.of(context).pushReplacementNamed(
                                          MyRoutes.loginScreen,
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.logout,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            height: 48,
                            width: 360,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: const Color(0xffFFFFFF),
                                filled: true,
                                hintText: "What do you want to eat?",
                                hintStyle: const TextStyle(
                                  color: Color(0xff868E96),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                prefixIcon: Image(
                                  image: AssetImage(ImagePath.searchImage),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Transform.scale(
                            scale: 1.3,
                            child: SizedBox(
                              height: 125,
                              width: 400,
                              child: CarouselSlider(
                                items: allBanner,
                                options: CarouselOptions(
                                  autoPlay: true,
                                  height: h * 0.42,
                                  enlargeCenterPage: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            child: DotsIndicator(
                              dotsCount: allBanner.length,
                              position: currentIndex.toInt(),
                              decorator: DotsDecorator(
                                activeColor: AppColor.dotIndicator,
                                size: const Size.square(5.0),
                                activeSize: const Size(25.0, 5.0),
                                activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryImageMap.entries
                                  .map(
                                    (entry) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = categoryImageMap.keys.toList().indexOf(entry.key);
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 132,
                                        margin: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: selectedIndex == categoryImageMap.keys.toList().indexOf(entry.key)
                                              ? AppColor.dotIndicator
                                              : Colors.white,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(8),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              entry.value,
                                              height: 30,
                                              width: 30,
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              entry.key,
                                              style: TextStyle(
                                                color:
                                                    selectedIndex == categoryImageMap.keys.toList().indexOf(entry.key)
                                                        ? Colors.white
                                                        : AppColor.dotIndicator,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 0),
                            child: Column(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: getSelectedCategoryList().length,
                                  itemBuilder: (context, index) {
                                    CategoryData pro = getSelectedCategoryList()[index];
                                    return InkWell(
                                      onTap: () {
                                        // Navigator.of(context)
                                        //     .pushNamed(MyRoutes.productDetailsScreen, arguments: pro);
                                      },
                                      child: Container(
                                        height: 104,
                                        width: 386,
                                        margin: const EdgeInsets.only(top: 10),
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8),
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushNamed(MyRoutes.productDetailsScreen, arguments: pro);
                                          },
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: Container(
                                                  height: 72,
                                                  width: 72,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: const BorderRadius.all(
                                                      Radius.circular(8),
                                                    ),
                                                    image: DecorationImage(
                                                      image: AssetImage(pro.image),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey.shade700,
                                                        offset: const Offset(0, 4),
                                                        spreadRadius: 1,
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                title: Transform.translate(
                                                  offset: const Offset(5, -12),
                                                  child: Text(
                                                    pro.title,
                                                    style: const TextStyle(
                                                      color: Color(0xff222226),
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                                subtitle: Transform.translate(
                                                  offset: const Offset(5, -12),
                                                  child: Text(
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    pro.subtitle,
                                                    style: const TextStyle(
                                                      color: Color(0xff75757C),
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                                trailing: Transform.translate(
                                                  offset: const Offset(15, 30),
                                                  child: IconButton(
                                                    color: AppColor.dotIndicator,
                                                    onPressed: () {
                                                      setState(() {
                                                        basketItem.add(pro);
                                                      });
                                                      Navigator.of(context)
                                                          .pushNamed(MyRoutes.basketScreen, arguments: basketItem);
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          backgroundColor: AppColor.dotIndicator,
                                                          behavior: SnackBarBehavior.floating,
                                                          showCloseIcon: true,
                                                          content: Text(
                                                            "Pizza Added to Basket",
                                                            style: TextStyle(color: AppColor.whiteColor),
                                                          ),
                                                        ),
                                                      );
                                                      print("${basketItem.length}=======================");
                                                    },
                                                    icon: const Icon(Icons.add_circle_outline_rounded),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 92,
                                                  ),
                                                  Transform.translate(
                                                    offset: const Offset(15, -18),
                                                    child: Text(
                                                      "£${pro.price.toString()}",
                                                      style: const TextStyle(
                                                        color: AppColor.dotIndicator,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 25,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
