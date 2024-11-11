import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mind/core/assets/colors.dart';
import 'package:green_mind/core/assets/styles.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_cubit.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_state.dart';

import '../../../../../core/assets/images.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddScoreCubit, AddScoreStates>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: 223.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(

                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/images/images-8@3x.png",
                                  width: 39.w,
                                  height: 39.h,
                                ),
                                RichText(text: TextSpan(
                                    text: "Hi, ",
                                    style: AppStyles.size18BlackColorBold.copyWith(
                                        height: 2
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Omar",
                                        style: AppStyles.size18BlackColorMedium.copyWith(
                                            height: 1

                                        ),

                                      )
                                    ]
                                ),),
                                Text(
                                  "Total Score",
                                  style: AppStyles.size9BlackColorMedium.copyWith(
                                    height: 2
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                      state.score??"",
                                      style: AppStyles.size39PrimaryColorBold
                                          .copyWith(
                                          height: 0.8
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [

                              SvgPicture.asset("assets/images/Path 64.svg",
                                height: 54.h,
                                width: 34.w,
                              ), // Replace with actual path
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,

                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Rank",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "A",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.white,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColorOpacity,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Number Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(8, (index) {
                              return Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: index + 1 == 6 ? Colors.green : Colors
                                      .green.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            }),
                          ),
                          SizedBox(height: 8.h),
                          // Progress indicator
                          Stack(
                            children: [
                              Container(
                                height: 10.h,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade300,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              Positioned(
                                left: 170.w,
                                child: Container(
                                  height: 20.h,
                                  width: 20.h,
                                  decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              // top: -,
             left: 40.w,
              child: Image.asset(
                AppImages.boy, // Replace with actual path
                height: 172.h,
                width: 93.w,
              ),
            ),
          ],
        );
      },
    );
  }
}
