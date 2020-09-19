import 'package:flutter/material.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseList extends StatelessWidget {
  const CourseList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //解决SingleChildScrollView嵌套滑动冲突
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mCourseTitles.length,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.symmetric(
          vertical: mDefaultPadding,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 40,
                height: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 0 ? mPrimaryColor : mSubColor),
                child: SvgPicture.asset(
                  'assets/images/play.svg',
                  color: index == 0 ? Colors.white : mPrimaryTextColor,
                )),
            SizedBox(
              width: mDefaultPadding * 1.5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mCourseTitles[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: mDefaultPadding / 6,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 12,
                    ),
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
