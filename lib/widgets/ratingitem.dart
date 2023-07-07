import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({this.index = 0, this.rating = 0});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? 'assets/images/star.png'
          : 'assets/images/star_grey.png',
      width: 20,
      height: 20,
    );
  }
}
