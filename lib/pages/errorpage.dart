import 'package:cozy_house/pages/homepage.dart';
import 'package:cozy_house/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/404.png',
                width: 300,
              ),
            ),
            SizedBox(height: 70),
            Text(
              'Where are you going?',
              style: BlackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              style: GreyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Container(
              width: 210,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: PurpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false);
                },
                child: Text(
                  'Back to Home',
                  style: WhiteTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
