import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/component/colors.dart';
import 'package:online_food_ordering_app/component/widgets/small_text.dart';

class IconAndText extends StatefulWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  const IconAndText({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  State<IconAndText> createState() => _IconAndTextState();
}

class _IconAndTextState extends State<IconAndText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon,
          color: widget.iconColor,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          smallText: widget.text,
        )
      ],
    );
  }
}
