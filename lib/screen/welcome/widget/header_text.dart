import 'package:flutter/material.dart';
import 'package:flutter_online_learning/constant.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: mDefaultPadding * 1.5,
        vertical: mDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Online Learning',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: mDefaultPadding,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
