import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_online_learning/screen/detail/widget/course_image.dart';
import 'package:flutter_online_learning/screen/detail/widget/course_title.dart';
import 'package:flutter_online_learning/screen/widget/welcome_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'course_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: mDefaultPadding * 1.5,
          vertical: mDefaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeTitle(),
            SizedBox(
              height: mDefaultPadding * 2,
            ),
            CourseImage(),
            SizedBox(
              height: mDefaultPadding * 2,
            ),
            CourseTitle(),
            SizedBox(
              height: mDefaultPadding * 2,
            ),
            CourseList()
          ],
        ),
      ),
    );
  }
}

