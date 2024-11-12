import 'package:flutter/material.dart';
import 'package:green_mind/core/assets/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/colors.dart';

class CustomProgress extends StatelessWidget {
  final int score;

  const CustomProgress({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                10,
                    (index) {
                  Color textColor = (index+1) <=score
                      ? AppColors.yellow
                      : Colors.black;

                  return Text(
                    '${index+1}',
                    style: AppStyles.size20PrimaryColorBold.copyWith(color: textColor),
                  );
                },
              ),
            ),
          ),

          LinearPercentIndicator(
            lineHeight: 15.0.h,
            percent:    (score / 10).clamp(0, 1),
            backgroundColor: AppColors.primaryColorOpacity,
            progressColor: AppColors.yellow,
            animation: true,
            animationDuration: 2000,
            barRadius: const Radius.circular(10),
          ),
        ],
      ),
    );
  }
}