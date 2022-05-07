import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_deliveryapp/controllers/popular_product_controller.dart';
import 'package:food_deliveryapp/pages/food/popular_food_detail.dart';
import 'package:food_deliveryapp/pages/home/food_page_body.dart';
import 'package:get/get.dart';
import 'pages/food/recommended_food_detail.dart';
import 'pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
