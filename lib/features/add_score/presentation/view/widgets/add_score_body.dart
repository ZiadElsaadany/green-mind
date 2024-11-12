import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mind/core/assets/images.dart';
import 'package:green_mind/core/helper/extensions.dart';
import 'package:green_mind/core/routing/routes.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_cubit.dart';
import 'package:green_mind/features/add_score/presentation/controller/add_score_state.dart';
import 'package:green_mind/features/home/presentation/view/widgets/nav_bar_widget.dart';

import '../../../../../core/assets/colors.dart';
import '../../../../../core/assets/styles.dart';
import '../../../../../core/assets/texts.dart';
import '../../../../../core/widgets/button_with_icon.dart';

class AddScoreBody extends StatefulWidget {
  const AddScoreBody({super.key});

  @override
  State<AddScoreBody> createState() => _AddScoreBodyState();
}

class _AddScoreBodyState extends State<AddScoreBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String score = "";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddScoreCubit, AddScoreStates>(
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 36.w),
            children: [
              30.verticalSpace,
              Text(
                AppTexts.enterYourScore,
                textAlign: TextAlign.center,
                style: AppStyles.size20PrimaryColorBold,
              ),
              25.verticalSpace,
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (c) {
                  if (c == null || c.trim().isEmpty) {
                    context.read<AddScoreCubit>().changeScore("");

                    return "Enter your score";
                  }
                  context.read<AddScoreCubit>().changeScore(c.trim());
                  return null;
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textAlign: TextAlign.center,
                style: AppStyles.size39PrimaryColorBold,
                cursorHeight: 40.h,
                cursorColor: AppColors.primaryColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: const BorderSide(color: Colors.transparent)),
                ),
              ),
              83.verticalSpace,

              AppButtonWithIcon(
                icon: AppImages.tennis,
                title: AppTexts.start ,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.pushNamed(Routes.home);
                  }
                },
                backgroundColor: state.score == null ||
                    (state.score ?? "").trim()==""
                    ? AppColors.gray.withOpacity(0.3)
                    : AppColors.yellow,
              ),

            ],
          ),
        );
      },
    );
  }
}

