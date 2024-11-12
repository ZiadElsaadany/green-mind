import 'package:flutter/material.dart';
import 'package:green_mind/core/assets/styles.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppStyles.size20PrimaryColorBold,);
  }
}
