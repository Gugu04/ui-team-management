import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';

class AppbarHomeW extends StatelessWidget {
  const AppbarHomeW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: AppColors.grey,
                    ),
              ),
              Text(
                'Quari Lab',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: const [
              CircleButton(
                iconSvg: AppAssets.date,
                iconColor: AppColors.black,
                iconHeight: 25,
              ),
              SizedBox(
                width: 20,
              ),
              CircleButton(
                iconSvg: AppAssets.addUser,
                iconColor: AppColors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
