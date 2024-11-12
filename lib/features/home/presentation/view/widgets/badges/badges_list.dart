import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'badge_widget.dart';

class BadgesList extends StatelessWidget {
  const BadgesList({super.key});



  @override
  Widget build(BuildContext context) {
    const List<String> lst=  [
      "assets/images/Group 59@3x.png",
      "assets/images/Group 62@3x.png",
      "assets/images/Group 58@3x.png",
      "assets/images/Group 58@3x.png",
      "assets/images/Group 58@3x.png",
    ];
    return SizedBox(
      height: 122.h,
      child: ListView.separated(
        separatorBuilder: (c,index) {
          return 9.horizontalSpace;
        },
        scrollDirection: Axis.horizontal,
          itemCount: lst.length,
          itemBuilder: (c,index){

        return  BadgeWidget(
           image: lst[index],
        );
      }),
    );
  }
}
