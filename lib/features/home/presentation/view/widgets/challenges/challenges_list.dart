import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_mind/core/assets/colors.dart';
import 'package:green_mind/features/home/data/challenge_model.dart';
import 'package:green_mind/features/home/presentation/view/widgets/challenges/challenge_widget.dart';

class ChallengesList extends StatefulWidget {
  const ChallengesList({super.key});

  @override
  State<ChallengesList> createState() => _ChallengesListState();
}

class _ChallengesListState extends State<ChallengesList> {
   final  List<ChallengeModel> lst=  [
  ChallengeModel(image1: 'assets/images/front-view-3d-tree-with-leaves-trunk@3x.png', image2: 'assets/images/COINTREE@3x.png'
      , startTextColor: AppColors.black, startColor: AppColors.orange, containerColor: AppColors.primaryColorOpacity),

];
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 125.h,
      child: ListView.separated(
          separatorBuilder: (c,index) {
            return 9.horizontalSpace;
          },
          scrollDirection: Axis.horizontal,
          itemCount: lst.length,
          itemBuilder: (c,index){

            return  ChallengeWidget(
              challengeModel: lst[index],
            );
          }),
    );
  }
}
