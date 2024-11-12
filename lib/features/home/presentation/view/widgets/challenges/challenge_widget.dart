import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_mind/core/assets/styles.dart';
import 'package:green_mind/core/assets/texts.dart';
import 'package:green_mind/features/home/data/challenge_model.dart';

class ChallengeWidget extends StatelessWidget {
  const ChallengeWidget({super.key, required this.challengeModel});

final ChallengeModel challengeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 238.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color:challengeModel.containerColor
      ),
      child: Row(
        children: [
          Expanded(

            child: Column(
              children: [
                Expanded(child: Image.asset(challengeModel.image2, )),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  decoration: BoxDecoration(
                    color: challengeModel.startColor ,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Text(AppTexts.start,

                    style: AppStyles.size18BlackColorBold.copyWith(
                        color: challengeModel.startTextColor
                    ),
                  ),
                )

              ],
            ),
          ),
          Expanded(child: Image.asset(challengeModel.image1,)),

        ],
      ),

    );
  }
}
