import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_food_ordering_app/component/colors.dart';
import 'package:online_food_ordering_app/component/widgets/big_text.dart';
import 'package:online_food_ordering_app/component/widgets/size_dimensions.dart';
import 'package:online_food_ordering_app/component/widgets/small_text.dart';
import 'package:online_food_ordering_app/pages/home/main_food_page_container.dart';
import 'package:online_food_ordering_app/pages/home/popular_food_list.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.9);
    //SizeDimensions.printScreenHeight();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                //top app bar
                topAppBar(),

                //images sliding
                Container(
                  height: 320,
                  child: PageView.builder(
                    itemBuilder: (context, index) {
                      return Center(
                        child: MainFoodPageLargeContainer(),
                      );
                    },
                    itemCount: 5,
                  ),
                ),

                //slider
                new DotsIndicator(
                  dotsCount: 4,
                  position: 1,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(
                  height: SizeDimensions.height20,
                ),
                //popular text
                Row(
                  children: [
                    BigText(text: "Popular"),
                    SizedBox(width: SizeDimensions.width10),
                    SmallText(smallText: "Food Pairing"),
                  ],
                ),
                SizedBox(
                  height: SizeDimensions.height10,
                ),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return PopularFoodList();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row topAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: "Bangladesh",
              color: AppColor.mainColor,
            ),
            Row(
              children: [
                SmallText(
                  smallText: "Narsinghdi",
                  color: AppColor.mainBlackColor,
                ),
                Icon(Icons.arrow_drop_down_rounded),
              ],
            ),
          ],
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.mainColor,
          ),
          child: Icon(
            Icons.search_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
