import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(image);
  }
}
