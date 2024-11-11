import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets/images.dart';
import '../assets/texts.dart';

AppBar appBar( ) {
  return AppBar(
    centerTitle: true,
    title:  SvgPicture.asset(AppImages.iconImage),
    actions: [
      TextButton(onPressed: ( ) { } , child: SvgPicture.asset(
          AppImages.notification
      ))
    ],
  );
}