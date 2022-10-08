import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';
import 'package:ui_team_management/src/ui/components/icon_with_label.dart';

class AppbarMettingW extends StatelessWidget {
  const AppbarMettingW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleButton(
                  iconSvg: AppAssets.leftArrow, iconHeight: 15, padding: 18),
            ),
            onTap: () => Navigator.pop(context)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Meeting with Dribbble',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quari Lab - Dribble',
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: AppColors.grey2),
                    ),
                    const IconWithLabel(
                        color: AppColors.grey2,
                        tag: '3 attachment',
                        icon: AppAssets.clip)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
