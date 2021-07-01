import 'package:flight_booking/style/colors.dart';
import 'package:flight_booking/style/images.dart';
import 'package:flight_booking/style/text_style.dart';
import 'package:flight_booking/widgets/custom_button.dart';
import 'package:flight_booking/widgets/search_flight_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        backgroundColor: AppColor.bg,
        title: Text('Hi, Samuel!'),
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.black),
      ),
      endDrawer: Container(width: 80, child: Drawer()),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
            child: Column(
              children: [
                Text(
                  'Find flights that suits your timing and budget',
                  style: AppTextStyle().wordStyle,
                ),
                SizedBox(height: 12),
                SearchFlightWidget(text: 'From', text1: 'To'),
                SizedBox(height: 12),
                CustomButton(text: 'Continue', onPressed: () {}),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Tours',
                      style: GoogleFonts.robotoSlab(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.arrow_right_alt, color: AppColor.grey),
                  ],
                ),
                SizedBox(height: 18),
                Container(
                  child: Column(children: [
                    Image.asset(AppImages.paris)
                  ],)
                ),
                Container(
                  color: Colors.white,
                  height: 320,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
