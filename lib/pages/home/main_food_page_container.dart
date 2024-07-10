import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/component/colors.dart';
import 'package:online_food_ordering_app/component/widgets/big_text.dart';
import 'package:online_food_ordering_app/component/widgets/size_dimensions.dart';
import 'package:online_food_ordering_app/component/widgets/small_text.dart';
import 'package:online_food_ordering_app/pages/home/icon_and_text.dart';

class MainFoodPageLargeContainer extends StatefulWidget {
  const MainFoodPageLargeContainer({super.key});

  @override
  State<MainFoodPageLargeContainer> createState() =>
      _MainFoodPageLargeContainerState();
}

class _MainFoodPageLargeContainerState
    extends State<MainFoodPageLargeContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/food_image2.webp"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 120,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 241, 239, 239),
                    blurRadius: 0.8,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(text: "Italian Side"),
                  SizedBox(
                    height: SizeDimensions.height20,
                    child: Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              color: AppColor.mainColor,
                              size: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SmallText(smallText: "4.5"),
                        const SizedBox(width: 10),
                        SmallText(smallText: "1287 "),
                        const SizedBox(width: 10),
                        SmallText(smallText: "comments")
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndText(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: AppColor.iconColor1,
                      ),
                      const IconAndText(
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
        ),
      ],
    );
  }
}
