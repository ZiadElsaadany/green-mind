import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mind/core/assets/images.dart';
import 'package:green_mind/features/home/presentation/view/widgets/nav_bar_widget.dart';

import '../../../../../core/assets/colors.dart';
import '../../../../../core/assets/styles.dart';
import '../../../../../core/assets/texts.dart';

class AddScoreBody extends StatelessWidget {
  const AddScoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.symmetric(
        vertical: 36.h,
        horizontal: 36.w
      ),
      children: [
        30.verticalSpace,
        Text(AppTexts.enterYourScore,
        textAlign: TextAlign.center,
        style: AppStyles.size20PrimaryColorBold,
        ),
        25.verticalSpace,
        TextFormField(
           keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
          style:AppStyles.size39PrimaryColorBold ,
          cursorHeight: 40.h,
          cursorColor: AppColors.primaryColor,
          decoration:  InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical:0
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: const BorderSide(
                color: Colors.transparent
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: const BorderSide(
                color: Colors.transparent
              )
            ),


          ),
        ),
        83.verticalSpace,
        TextButton(
            style: TextButton.styleFrom(

              backgroundColor: AppColors.yellow
            ),
            onPressed:  ( ) { }
            , child: Padding(
              padding:  const EdgeInsets.symmetric(
                  horizontal: 8.0,
                 vertical:8
              ),
              child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImages.tennis,

                  height: 16.h,
                  width: 16.w,
                  colorFilter: const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                  ),
                  10.horizontalSpace,
                   Text(AppTexts.start,
                  style: AppStyles.size18BlackColorBold,
                  )
                ],
              ),
            ))



      ],
    ) ;
  }
}
