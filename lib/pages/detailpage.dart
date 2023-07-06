import 'package:cozy_house/theme.dart';
import 'package:cozy_house/widgets/facilityitem.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunchUrl(Uri.parse(url))) {
        launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: WhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/city_3.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: WhiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  // TITLE ===>
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: BlackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
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
                              ],
                            ),
                            // RATING STAR ===>
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 20,
                                  height: 20,
                                  color: GreyColor,
                                ),
                                SizedBox(width: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // MAIN FACILITES ===>
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilites',
                          style: RegularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: 'Kitchen',
                              imageUrl: 'assets/images/icon_kitchen.png',
                              total: 3,
                              area: 'Kitchen',
                            ),
                            FacilityItem(
                              name: 'Kitchen',
                              imageUrl: 'assets/images/icon_bedroom.png',
                              total: 3,
                              area: 'Bedroom',
                            ),
                            FacilityItem(
                              name: 'Bedroom',
                              imageUrl: 'assets/images/icon_lemari.png',
                              total: 3,
                              area: 'Lemari',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // PHOTOS ===>
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photo',
                          style: RegularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: edge),
                            Container(
                              width: 110,
                              height: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/photo_1.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 18),
                            Container(
                              width: 110,
                              height: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/photo_2.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 18),
                            Container(
                              width: 110,
                              height: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/photo_3.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: edge),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // LOCATION ===>
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: RegularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jln. Kappan Sukses No. 20',
                                  style: GreyTextStyle,
                                ),
                                Text(
                                  'Palembang',
                                  style: GreyTextStyle,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    'https://goo.gl/maps/WxKGjK5eXj8qs7ZN7');
                              },
                              child: Image.asset(
                                'assets/images/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      // BUTTON BOOK NOW ===>
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: PurpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  18,
                                ),
                              ),
                            ),
                            onPressed: () {
                              launchUrl('tel://+628123654123');
                            },
                            child: Text(
                              'Book Now',
                              style: WhiteTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
                    height: 40,
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
