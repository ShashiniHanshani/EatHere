import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/component/widgets/size_dimensions.dart';

class IconsForPages extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData iconImage;

  const IconsForPages(
      {super.key,
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeDimensions.height45,
      width: SizeDimensions.height45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Icon(
        iconImage,
        color: iconColor,
        size: 16,
      ),
    );
  }
}
