import 'package:flutter/material.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Course Detail',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: mDefaultPadding / 2,
            vertical: mDefaultPadding / 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: mSubColor,
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/clock.svg'),
              SizedBox(
                width: mDefaultPadding / 5,
              ),
              Text(
                '3 hours, 20 min',
                style: TextStyle(
                  color: mPrimaryTextColor,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
