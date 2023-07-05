import 'package:cozy_house/models/city.dart';
import 'package:cozy_house/models/space.dart';
import 'package:cozy_house/theme.dart';
import 'package:cozy_house/widgets/citycard.dart';
import 'package:cozy_house/widgets/spacecard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
