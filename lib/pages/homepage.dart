import 'package:cozy_house/models/city.dart';
import 'package:cozy_house/models/space.dart';
import 'package:cozy_house/models/tips.dart';
import 'package:cozy_house/theme.dart';
import 'package:cozy_house/widgets/buttonnavbaritem.dart';
import 'package:cozy_house/widgets/citycard.dart';
import 'package:cozy_house/widgets/spacecard.dart';
import 'package:cozy_house/widgets/tipscard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: edge, left: edge),
              child: Text(
                'Explore Now',
                style: BlackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: GreyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            // POPULAR CITIES ====>
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: RegularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city_1.png',
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/city_2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city_3.png',
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(height: 30),
            // RECOMMENDED SPACE ===>
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: RegularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      1,
                      'Kuretakeso Hott',
                      'assets/images/space_1.png',
                      52,
                      'Bandung',
                      'Germany',
                      4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      2,
                      'Roemah Nenek',
                      'assets/images/space_2.png',
                      52,
                      'Seattle',
                      'Bogor',
                      5,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      3,
                      'Darrling How',
                      'assets/images/space_3.png',
                      52,
                      'Jakarta',
                      'Indonesia',
                      3,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // TIPS AND GUIDANCE ===>
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: RegularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
                right: edge,
                bottom: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guideliness',
                      imageUrl: 'assets/images/tips_1.png',
                      updatedAt: 'Updated 20 Apr',
                    ),
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/images/tips_2.png',
                      updatedAt: 'Updated 11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: // BUTTON NAVIGATION ===>
          Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonNavbarItem(
              'assets/images/icon_home.png',
              true,
            ),
            ButtonNavbarItem(
              'assets/images/icon_mail.png',
              false,
            ),
            ButtonNavbarItem(
              'assets/images/icon_card.png',
              false,
            ),
            ButtonNavbarItem(
              'assets/images/icon_love.png',
              false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
