import 'package:flight_booking/screens/homepage.dart';
import 'package:flight_booking/style/images.dart';
import 'package:flight_booking/style/text_style.dart';
import 'package:flight_booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.planWing), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Column(
                    children: [
                      Text('Discover', style: AppTextStyle().titleStyle),
                      FittedBox(
                          child: Text('Best Dates',
                              style: AppTextStyle().titleStyle)),
                      Text('To Fly', style: AppTextStyle().titleStyle),
                      Text('Booking and saving made easy',
                          style: AppTextStyle().subStyle)
                    ],
                  ),
                ),
                Spacer(),
                CustomButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => HomePage()),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
