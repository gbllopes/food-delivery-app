import 'package:flutter/material.dart';
import 'package:food_deliveryapp/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Brasília',
                    color: AppColors.mainColor,
                  ),
                  Row(children: [
                    SmallText(
                      text: 'São Sebastião',
                      color: Colors.black54,
                    ),
                    Icon(Icons.arrow_drop_down)
                  ]),
                ],
              ),
              Container(
                width: Dimensions.width45,
                height: Dimensions.height45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius05),
                    color: AppColors.mainColor),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: FoodPageBody(),
          ),
        )
      ],
    ));
  }
}
