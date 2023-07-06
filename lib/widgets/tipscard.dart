import 'package:cozy_house/models/tips.dart';
import 'package:cozy_house/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(
            tips.imageUrl,
            width: 80,
            height: 80,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tips.title,
                style: BlackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 4),
              Text(
                tips.updatedAt,
                style: GreyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: GreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
