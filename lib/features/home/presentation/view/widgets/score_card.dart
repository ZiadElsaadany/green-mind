import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_mind/core/assets/colors.dart';
import 'package:green_mind/core/assets/styles.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_cubit.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_state.dart';

import '../../../../../core/assets/images.dart';
import 'progress.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddScoreCubit, AddScoreStates>(

     buildWhen: (prev,c)=>prev.status !=c.status,
      builder: (context, state) {
        return  Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.h),topRight: Radius.circular(20.h)),
                  ),
                  child: Column(
                    children: [
                      10.verticalSpace,
                      Image.asset(
                        AppImages.profileImage,
                        height: 39.h,
                        width: 39.w,

                      ),
                      5.verticalSpace,

                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Hi, ',
                                style: AppStyles.size18BlackColorBold
                            ),
                            TextSpan(
                                text: 'Omar',
                                style: AppStyles.size18BlackColorMedium
                            ),
                          ],
                        ),
                      ),
                      10.verticalSpace,

                      Text(
                        'Total Score',
                        style: AppStyles.size9BlackColorMedium,
                      ),
                      SizedBox(height: 5.h),

                      // Animated Score Display
                      // AnimatedScore(score: 55),
                      Text(
                        state.score ?? "",
                        // "20",
                        style: AppStyles.size39PrimaryColorBold.copyWith(height: 0.8),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColorOpacity,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      // Progress Indicator
                      CustomProgress(score: int.parse(state.score??"0"),)
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20.w,
              top:-10,
              child: Image.asset(
                AppImages.boy,
                height: 180.h,
                width: 93.w,
              ),
            ),
          ],
        );
      },
    );
  }
}
