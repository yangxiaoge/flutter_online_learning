import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_online_learning/screen/widget/welcome_title.dart';

import 'learning_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LearningCard(
                  imgUrl: 'assets/images/learning01.svg',
                  check: true,
                ),
                LearningCard(
                  imgUrl: 'assets/images/learning02.svg',
                ),
              ],
            ),
            SizedBox(
              height: mDefaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LearningCard(
                  imgUrl: 'assets/images/learning03.svg',
                ),
                LearningCard(
                  imgUrl: 'assets/images/learning04.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
