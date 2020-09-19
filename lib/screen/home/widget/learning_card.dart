import 'package:flutter/material.dart';
import 'package:flutter_online_learning/constant.dart';
import 'package:flutter_online_learning/screen/detail/detail_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LearningCard extends StatelessWidget {
  final String imgUrl;
  final bool check;

  const LearningCard({
    Key key,
    this.imgUrl,
    this.check = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var mWidth = size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen();
        }));
      },
      child: Container(
        width: mWidth / 2 - mDefaultPadding * 2,
        height: 210,
        padding: EdgeInsets.all(mDefaultPadding),
        decoration: BoxDecoration(
          color: check ? mPrimaryColor : mCardBackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Multimedia',
              style: TextStyle(
                color: check ? Colors.white : mSecondTextColor,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: mDefaultPadding / 3,
            ),
            Text(
              'Lorem ipsum dolor sit amet',
              style: TextStyle(
                  color: check ? Colors.white : mPrimaryTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: mDefaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    height: 3,
                    color: check ? Colors.white : mSubColor,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 3,
                    color: mLineColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mDefaultPadding,
            ),
            Expanded(
              child: SvgPicture.asset(
                imgUrl,
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
