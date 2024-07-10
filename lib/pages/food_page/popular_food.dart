import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/component/widgets/icons_for_pages.dart';
import 'package:online_food_ordering_app/component/widgets/size_dimensions.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({super.key});

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: SizeDimensions.popularfoodImageSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sushi_rolls.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeDimensions.height45,
            left: SizeDimensions.height20,
            right: SizeDimensions.height20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconsForPages(iconImage: Icons.arrow_back_ios),
                IconsForPages(
                  iconImage: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
