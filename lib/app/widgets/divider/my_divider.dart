import 'package:flutter/material.dart';
import 'package:hubtel_assessment/app/resources/constants.dart';

class MyDivider extends StatelessWidget {
  final double height;
  const MyDivider({super.key, this.height = .7});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: AppColors.mySecondaryColor,
    );
  }
}
