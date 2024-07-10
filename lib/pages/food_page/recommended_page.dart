import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_food_ordering_app/component/colors.dart';
import 'package:online_food_ordering_app/component/widgets/big_text.dart';
import 'package:online_food_ordering_app/component/widgets/icons_for_pages.dart';
import 'package:online_food_ordering_app/component/widgets/middle_text.dart';
import 'package:online_food_ordering_app/component/widgets/size_dimensions.dart';
import 'package:online_food_ordering_app/component/widgets/small_text.dart';
import 'package:online_food_ordering_app/pages/home/icon_and_text.dart';

class RecommendedPage extends StatefulWidget {
  const RecommendedPage({super.key});

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
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
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: "Biriani"),
                            SizedBox(
                              height: SizeDimensions.height10,
                            ),
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
                            SizedBox(
                              height: SizeDimensions.height20,
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
                            SizedBox(
                              height: SizeDimensions.height20,
                            ),
                            BigText(text: "Introduce"),
                            SizedBox(
                              height: SizeDimensions.height20,
                            ),
                            MiddleText(
                              middle_text:
                                  "Sushi is a Japanese dish that features medium-grained rice cooked in vinegar, served with raw or cooked seafood and a variety of toppings or fillings. Contrary to popular belief, rice is the main component of sushi, not raw fish. You are probably familiar with the sight of rolled sushi sliced into perfect bite-sized pieces, but not all sushi is rolled.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: SizeDimensions.pageViewTextContainer,
        child: Container(
          height: SizeDimensions.pageViewTextContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: AppColor.textColor.withOpacity(0.25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsetsDirectional.only(
                    start: SizeDimensions.height20,
                  ),
                  height: SizeDimensions.ListViewImage / 2,
                  width: SizeDimensions.ListViewImage,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(SizeDimensions.radius20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.remove,
                          color: AppColor.signColor,
                        ),
                        BigText(text: "0"),
                        Icon(
                          Icons.add,
                          color: AppColor.signColor,
                        ),
                      ],
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsetsDirectional.only(
                  end: SizeDimensions.height20,
                ),
                height: SizeDimensions.ListViewImage / 2,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColor.mainColor,
                  borderRadius: BorderRadius.circular(SizeDimensions.radius20),
                ),
                child: SmallText(
                  smallText: "0.08 Add to cart",
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
