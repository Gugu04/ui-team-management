import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';

class NavigationBarHomeW extends StatelessWidget {
  const NavigationBarHomeW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 9, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleButton(
            iconSvg: AppAssets.menu,
            iconHeight: 25,
            padding: 18,
            borderColor: AppColors.blue,
            borderWidth: 1.5,
            iconColor: AppColors.blue,
          ),
          const CircleButton(
              iconSvg: AppAssets.notes, iconHeight: 28, padding: 22),
          const CircleButton(
              iconSvg: AppAssets.users, iconHeight: 22, padding: 21),
          CircleButton(
            iconSvg: AppAssets.add,
            iconHeight: 17,
            padding: 22,
            iconColor: AppColors.white,
            fillColor: AppColors.blue,
            borderColor: AppColors.blue,
            boxShadow: AppTheme.boxShadowBlue(),
          ),
        ],
      ),
    );
  }
}
