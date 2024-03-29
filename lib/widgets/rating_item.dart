import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  late final int index;
  late final int rating;

  RatingItem({required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/icon_start.png' : 'assets/icon_star_grey.png',
      width: 20,
    );
  }
}
