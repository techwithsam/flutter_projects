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
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22, right: 22, bottom: 30),
                  child: Column(
                    children: [
                      Text(
                        'Discover Best Dates To Fly',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.titleStyle,
                      ),
                      Text('Booking and saving made easy')
                    ],
                  ),
                ),
                CustomButton(text: 'Get Started', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
