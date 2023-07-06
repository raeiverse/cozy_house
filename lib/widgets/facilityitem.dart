import 'package:flutter/material.dart';

import '../theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;
  final String area;

  FacilityItem({
    required this.name,
    required this.imageUrl,
    required this.total,
    required this.area,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          this.imageUrl,
          width: 32,
          height: 32,
        ),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '${this.total}',
            style: PurpleTextStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: '/ ${this.area}',
                style: GreyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
