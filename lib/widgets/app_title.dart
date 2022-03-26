import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      height:
          ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.125.sw,
      child: Stack(
        children: [
          Image.asset(
            'images/pikachu.jpg',
            fit: BoxFit.cover,
            //           height: 130.h,
            height: ScreenUtil().orientation == Orientation.portrait
                ? 0.25.sh
                : 0.125.sw,

            width: double.infinity.w,
          ),
          Expanded(
            child: Container(
              alignment: ScreenUtil().orientation == Orientation.portrait
                  ? Alignment.centerLeft
                  : Alignment.center,
              child: Image.asset(
                'images/pokedex.png',
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.25.sh
                    : 0.25.sw,
                //       height: 130.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
