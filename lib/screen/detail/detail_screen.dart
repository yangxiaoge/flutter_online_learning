import 'package:flutter/material.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_online_learning/screen/detail/widget/body.dart';
import 'package:flutter_online_learning/screen/widget/my_bottom_bar.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: Text(
        'Multimedia',
        style: TextStyle(
          color: mPrimaryTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
