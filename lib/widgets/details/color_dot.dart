import 'package:flutter/material.dart';
import 'package:my_store/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillColor,
    required this.isSelected,
  });

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: kTextLightColor),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? kTextLightColor : Colors.transparent),
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
