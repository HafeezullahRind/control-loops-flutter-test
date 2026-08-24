import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/app_typography.dart';

class ServicesOverview extends StatelessWidget {
  final VoidCallback? onSeeAll;
  final String title;

  const ServicesOverview({super.key, this.onSeeAll, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTypography.headingXl()),
        GestureDetector(
          onTap: onSeeAll,
          child: Text(
            AppStrings.seeAll,
            style: AppTypography.body(color: const Color(0xFF006B5D)),
          ),
        ),
      ],
    );
  }
}
