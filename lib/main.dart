import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_ordering_app/pages/food_page/popular_food.dart';
import 'package:online_food_ordering_app/pages/food_page/recommended_page.dart';
import 'package:online_food_ordering_app/pages/home/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MainFoodPage(),
      home: RecommendedPage(),
      //home: PopularFood(),
    );
  }
}
