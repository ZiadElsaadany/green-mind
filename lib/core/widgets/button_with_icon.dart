import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../assets/colors.dart';
import '../assets/styles.dart';

class AppButtonWithIcon extends StatelessWidget {
  const AppButtonWithIcon({super.key, this.onPressed, required this.backgroundColor, required this.title, required this.icon});
  final void Function()? onPressed;
  final Color backgroundColor;
  final String  title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 16.h,
                width: 16.w,
                colorFilter:
                const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
              ),
              10.horizontalSpace,
              Text(
                title,
                style: AppStyles.size18BlackColorBold,
              )
            ],
          ),
        ));
  }
}
