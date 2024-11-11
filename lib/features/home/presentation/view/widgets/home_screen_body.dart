import 'package:flutter/material.dart';
import 'package:green_mind/features/home/presentation/view/widgets/score_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        ScoreCard()


      ],
    );
  }
}
