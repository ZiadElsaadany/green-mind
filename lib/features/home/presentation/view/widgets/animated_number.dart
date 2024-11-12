import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/colors.dart';

class AnimatedProgressIndicator extends StatelessWidget {
  final double score;
  final double maxScore;

  const AnimatedProgressIndicator({
    super.key,
    required this.score,
    this.maxScore = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    // حساب النسبة المئوية بناءً على score و maxScore
    double percent = (score / maxScore).clamp(0.0, 1.0);

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                maxScore.toInt(),
                    (index) {
                  int currentNumber = index + 1;
                  Color textColor = currentNumber <=score
                      ? AppColors.yellow
                      : Colors.black;

                  return Text(
                    '$currentNumber',
                    // style: AppTextStyles.bold30deepGreen.copyWith(color: textColor),
                  );
                },
              ),
            ),
          ),

          LinearPercentIndicator(
            lineHeight: 15.0.h,
            percent: percent,
            backgroundColor: AppColors.primaryColorOpacity,
            progressColor: AppColors.yellow,
            animation: true,
            animationDuration: 2000,
            barRadius: const Radius.circular(8),
          ),
        ],
      ),
    );
  }
}