import 'package:get/get.dart';

// Fórmula = Tamanho da tela (MediaQuery.of(context).size.height) / width ou height dos widgets
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.44;
  static double pageViewContainer = screenHeight / 3.55;
  static double pageViewTextContainer = screenHeight / 6.50;

  //dynamic padding, margin and height
  static double height10 = screenHeight / 159.2;
  static double height15 = screenHeight / 52.06;
  static double height20 = screenHeight / 39.05;
  static double height30 = screenHeight / 26.03;

  //dynamic padding, margin and width
  static double width05 = screenHeight / 78.1;
  static double width10 = screenHeight / 78.1;
  static double width15 = screenHeight / 52.06;
  static double width20 = screenHeight / 39.05;
  static double width30 = screenHeight / 26.03;

  static double font20 = screenHeight / 39.05;
  static double radius20 = screenHeight / 39.05;
  static double radius30 = screenHeight / 26.03;

  static double iconSize24 = screenHeight / 32.54;
}
