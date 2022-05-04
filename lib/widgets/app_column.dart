import 'package:flutter/material.dart';

import 'package:food_deliveryapp/widgets/IconAndTextWidget.dart';
import 'package:food_deliveryapp/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final double? textSize;
  const AppColumn({
    Key? key,
    required this.text,
    this.textSize = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: textSize!,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(Icons.star,
                        color: AppColors.mainColor,
                        size: Dimensions.iconSize15))),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '4.5'),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '1287 comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              text: 'Normal',
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              text: '1.7km',
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              text: '32min',
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor2,
            ),
          ],
        )
      ],
    );
  }
}
