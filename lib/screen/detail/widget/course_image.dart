import 'package:flutter/material.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseImage extends StatelessWidget {
  const CourseImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        color: mPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SvgPicture.asset('assets/images/intro.svg'),
    );
  }
}
