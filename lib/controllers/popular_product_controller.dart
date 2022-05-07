import 'package:get/get.dart';

import 'package:food_deliveryapp/data/repositories/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  PopularProductController({
    required this.popularProductRepo,
  });

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    } else {}
  }
}