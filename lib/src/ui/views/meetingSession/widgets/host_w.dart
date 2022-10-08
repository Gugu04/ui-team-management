import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';

class HostW extends StatelessWidget {
  const HostW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.9,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(AppAssets.session1, fit: BoxFit.fitWidth)),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quari Lab (Host)",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                ),
                const CircleButton(
                  iconSvg: AppAssets.voice,
                  iconColor: AppColors.white,
                  iconHeight: 23,
                  padding: 5,
                  fillColor: AppColors.blue,
                  borderColor: AppColors.blue,
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}
