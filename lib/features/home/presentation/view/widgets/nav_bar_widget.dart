import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mind/core/assets/images.dart';
import 'package:green_mind/features/home/presentation/controller/home_cubit.dart';
import 'package:green_mind/features/home/presentation/controller/home_states.dart';

import '../../../../../core/assets/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        var cubit = context.read<HomeCubit>();
        return Container(
          margin: EdgeInsets.only(
              left: 20.w, right: 20.w, top: 10.h, bottom: 30.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 65.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 25,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15.w),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavItem(
                    index: 0,
                    icon: AppImages.home,
                    selectedIndex: state.indexForBottomNavBar ?? 0,
                    onTap: () {
                      cubit.changeIndex(0);
                    },
                  ),
                  NavItem(
                    index: 1,
                    icon: AppImages.tennis,
                    selectedIndex: state.indexForBottomNavBar ?? 0,
                    onTap: () {
                      cubit.changeIndex(1);
                    },
                  ),
                  NavItem(
                    index: 2,
                    icon: AppImages.tennis,
                    selectedIndex: state.indexForBottomNavBar ?? 0,
                    onTap: () {
                      cubit.changeIndex(2);
                    },
                  ),
                  NavItem(
                    index: 3,
                    icon: AppImages.user,
                    selectedIndex: state.indexForBottomNavBar ?? 0,
                    onTap: () {
                      cubit.changeIndex(3);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    this.onTap,
    required this.index,
    required this.selectedIndex,
    required this.icon,
  });

  final void Function()? onTap;
  final int index;
  final int selectedIndex;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            Container(
              margin: EdgeInsets.only(bottom: 10.h),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.green.withOpacity(0.4),
                    spreadRadius: 10,
                    blurRadius:60,
                    offset: const Offset(0, 4),

                  ),
                ],
              ),
              child: SvgPicture.asset(icon,
                colorFilter: const ColorFilter.mode(AppColors.white,
                    BlendMode.srcIn),
              ),
            ),
          if (!isSelected)
            SvgPicture.asset(icon,
            colorFilter: const ColorFilter.mode(AppColors.gray, BlendMode.srcIn),
            ),
        ],
      ),
    );
  }
}
