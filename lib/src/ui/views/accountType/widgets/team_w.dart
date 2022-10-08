import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/app_colors.dart';
import 'package:ui_team_management/src/ui/views/accountType/widgets/button_w.dart';
import 'package:ui_team_management/src/ui/views/accountType/widgets/team_name_field_w.dart';

class TeamW extends StatelessWidget {
  const TeamW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Team Name',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const TeamNameFieldW(),
              const ButtonW()
            ],
          ),
        )
      ],
    );
  }
}
