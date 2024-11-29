import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_app_ui/utils/image_utils.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/my_routes_utils.dart';
import '../../widget/custom_favourite_container.dart';

class FavouritesScreen2 extends StatefulWidget {
  const FavouritesScreen2({super.key});

  @override
  State<FavouritesScreen2> createState() => _FavouritesScreen2State();
}

class _FavouritesScreen2State extends State<FavouritesScreen2> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColorScreen,
      appBar: AppBar(
        backgroundColor: AppColor.bgColorScreen,
        title: const Text(
          "Favourites",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff0A0D14),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "All Favourites(23)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(16),
            CustomFavouriteContainer(
              imagePath: ImagePath.pizzasImage4,
              title: 'Margherita',
              subtitle: 'Lorem ipsum dolor sit amet.',
              price: '£8.99',
            ),
            const Gap(16),
            CustomFavouriteContainer(
              imagePath: ImagePath.pizzasImage1,
              title: 'Diavola',
              subtitle: 'Tomato base, mozarella, spicy salami',
              price: '£10',
            ),
            const Gap(16),
            CustomFavouriteContainer(
              imagePath: ImagePath.pizzasImage5,
              title: 'Margherita',
              subtitle: 'Lorem ipsum dolor sit amet.',
              price: '£8.99',
            ),
            const Gap(16),
            CustomFavouriteContainer(
              imagePath: ImagePath.pizzasImage3,
              title: 'Diavola',
              subtitle: 'Tomato base, mozarella, spicy salami',
              price: '£10',
            ),
          ],
        ),
      ),
    );
  }
}
