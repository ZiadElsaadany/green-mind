import 'package:flutter/material.dart';
import 'package:green_mind/core/widgets/appBar.dart';
import 'package:green_mind/features/add_score/presentation/view/widgets/add_score_body.dart';

class AddScoreScreen extends StatelessWidget {
  const AddScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const AddScoreBody(),
    );
  }
}
