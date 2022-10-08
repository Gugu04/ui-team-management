import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/app_colors.dart';

class TitleTagW extends StatelessWidget {
  final String tag1;
  final String? tag2;
  const TitleTagW({Key? key, required this.tag1, this.tag2 = 'See ALL'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tag1,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          tag2!,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
