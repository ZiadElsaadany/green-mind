import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles{

   static TextStyle size20PrimaryColorBold= const TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 20
  );
   static TextStyle size39PrimaryColorBold= const TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 39
  );
   static TextStyle size18BlackColorBold= const TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
    fontSize: 18
  );
   static TextStyle size18BlackColorMedium= const TextStyle(
       color: AppColors.black,
       fontWeight: FontWeight.w500,
       fontSize: 18
   ); static TextStyle size9BlackColorMedium= const TextStyle(
       color: AppColors.black,
       fontWeight: FontWeight.w500,
       fontSize: 9
   );
}