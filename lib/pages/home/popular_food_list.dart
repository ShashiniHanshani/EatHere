import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/component/colors.dart';
import 'package:online_food_ordering_app/component/widgets/big_text.dart';
import 'package:online_food_ordering_app/component/widgets/size_dimensions.dart';
import 'package:online_food_ordering_app/component/widgets/small_text.dart';
import 'package:online_food_ordering_app/pages/home/icon_and_text.dart';

class PopularFoodList extends StatefulWidget {
  const PopularFoodList({super.key});

  @override
  State<PopularFoodList> createState() => _PopularFoodListState();
}

class _PopularFoodListState extends State<PopularFoodList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeDimensions.height20),
      height: 120,
      width: SizeDimensions.screenWidth,
      child: Row(
        children: [
          Container(
            height: SizeDimensions.pageViewTextContainer,
            width: SizeDimensions.pageViewTextContainer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeDimensions.radius15),
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/images/burger.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: SizeDimensions.height15,
          ),
          Expanded(
            child: Container(
              height: SizeDimensions.ListViewText,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: "Nutritious Spicy Chicken meal "),
                  SizedBox(height: SizeDimensions.height10),
                  SmallText(smallText: "With Chinese characteristics"),
                  SizedBox(height: SizeDimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndText(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: AppColor.iconColor1,
                      ),
                      IconAndText(
                        icon: Icons.location_on,
                        text: "1.7km",
                        iconColor: AppColor.mainColor,
                      ),
                      IconAndText(
                        icon: Icons.access_time_rounded,
                        text: "32 min",
                        iconColor: AppColor.iconColor2,
                      ),
                    ],
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
