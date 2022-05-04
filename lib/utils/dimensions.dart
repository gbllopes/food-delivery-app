import 'package:get/get.dart';

// Fórmula = Tamanho da tela (MediaQuery.of(context).size.height) / width ou height dos widgets
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.44;
  static double pageViewContainer = screenHeight / 3.55;
  static double pageViewTextContainer = screenHeight / 6.50;

  //Dynamic Padding, Margin and Height
  static double height05 = screenHeight / 156.2;
  static double height10 = screenHeight / 78.1;
  static double height15 = screenHeight / 52.06;
  static double height20 = screenHeight / 39.05;
  static double height30 = screenHeight / 26.03;
  static double height45 = screenHeight / 17.35;

  //Dynamic Padding, Margin and Width
  static double width05 = screenHeight / 156.2;
  static double width10 = screenHeight / 78.1;
  static double width15 = screenHeight / 52.06;
  static double width20 = screenHeight / 39.05;
  static double width30 = screenHeight / 26.03;
  static double width45 = screenHeight / 17.35;

  //Font Size
  static double font20 = screenHeight / 39.05;
  static double font26 = screenHeight / 30.03;

  //Border Radius
  static double radius05 = screenHeight / 78.1;
  static double radius15 = screenHeight / 39.05;
  static double radius20 = screenHeight / 39.05;
  static double radius30 = screenHeight / 52.06;
  static double radius35 = screenHeight / 22.31;

  //Icon Size
  static double iconSize24 = screenHeight / 32.54;
  static double iconSize15 = screenHeight / 52.06;

  //List View Size
  static double listViewImgSize = screenHeight / 6.50;
  static double listViewTextContainerSize = screenHeight / 7.81;

  //Image Size Detail Page
  static double popularFoodImgSize = screenHeight / 2.23;

  //Bottom Navigation Bar Size
  static double bottomNavigationSize = screenHeight / 6.50;
}
