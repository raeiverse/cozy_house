import 'package:cozy_house/models/space.dart';
import 'package:cozy_house/pages/detailpage.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    space.imageUrl,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: PurpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/star.png',
                              width: 22,
                              height: 22,
                            ),
                            SizedBox(width: 2),
                            Text(
                              '${space.rating}/5',
                              style: WhiteTextStyle.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: BlackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 2),
              Text.rich(
                TextSpan(
                  text: '\$${space.price}',
                  style: PurpleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '/ month',
                      style: GreyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                '${space.city}, ${space.country}',
                style: GreyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
