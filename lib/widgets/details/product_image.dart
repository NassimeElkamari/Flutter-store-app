import 'package:flutter/material.dart';
import 'package:my_store/constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.6,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.7,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
