import 'package:cozy_house/theme.dart';
import 'package:flutter/material.dart';

class ButtonNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  ButtonNavbarItem(this.imageUrl, this.isActive);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          this.imageUrl,
          width: 26,
          height: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: PurpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
