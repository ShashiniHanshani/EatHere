import 'package:get/get.dart';

class SizeDimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //static double screenHeight = 844;

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  static double height05 = screenHeight / 168.8;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  static double font20 = screenHeight / 42.2;

  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;

  //iconSize
  static double iconSize24 = screenHeight / 35.17;

  //list view Image
  static double ListViewImage = screenWidth / 3.25;
  static double ListViewText = screenWidth / 3.9;

  //popularfood iamge size
  static double popularfoodImageSize = screenHeight / 2.18;

  static void printScreenHeight() {
    print('Screen Height: $screenWidth');
  }
}
