import 'package:food_deliveryapp/controllers/popular_product_controller.dart';
import 'package:food_deliveryapp/data/api/api_client.dart';
import 'package:food_deliveryapp/data/repositories/popular_product_repo.dart';
import 'package:food_deliveryapp/utils/config.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  // Get.lazyPut(() => ApiClient(appBaseUrl: Config.baseUrl)); // IMPLEMENTAR .ENV
  Get.lazyPut(() => ApiClient(appBaseUrl: Config.baseUrl));

  // repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
