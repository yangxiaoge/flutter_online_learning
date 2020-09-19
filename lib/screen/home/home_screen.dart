import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_online_learning/screen/home/widget/body.dart';
import 'package:flutter_online_learning/screen/widget/my_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
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
        'Hello,Rusdi',
        style: TextStyle(
          color: mPrimaryTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/images/search.svg',
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/images/user.svg',
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
