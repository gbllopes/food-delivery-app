import 'package:flutter/material.dart';
import 'package:food_deliveryapp/utils/dimensions.dart';

import 'package:food_deliveryapp/widgets/small_text.dart';

import '../utils/colors.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        SizedBox(width: Dimensions.width05),
        SmallText(text: text)
      ],
    );
  }
}
