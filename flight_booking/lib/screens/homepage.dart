import 'package:flight_booking/style/colors.dart';
import 'package:flutter/material.dart';

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
      body: Container(),
    );
  }
}
