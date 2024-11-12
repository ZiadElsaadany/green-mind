import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_mind/core/assets/images.dart';
import 'package:green_mind/core/assets/styles.dart';
import 'package:green_mind/core/widgets/button_with_icon.dart';
import 'package:green_mind/features/home/presentation/view/widgets/badges/badges_list.dart';
import 'package:green_mind/features/home/presentation/view/widgets/challenges/challenges_list.dart';
import 'package:green_mind/features/home/presentation/view/widgets/headline_widget.dart';
import 'package:green_mind/features/home/presentation/view/widgets/score_card.dart';

import '../../../../../core/assets/colors.dart';
import 'progress.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ScoreCard(),
        19.verticalSpace,
        const AppButtonWithIcon(backgroundColor: AppColors.yellow, title: "Continue Challenge", icon: AppImages.tennis),
     30.verticalSpace,
        const HeadlineWidget(title: "LATEST BADGES"),
        6.verticalSpace,

const BadgesList(),
        20.verticalSpace,
        const HeadlineWidget(title: "POPULAR CHALLENGES"),
        6.verticalSpace,
        const ChallengesList(),
        16.verticalSpace,



      ],
    );
  }
}
