import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';

class NavigationBarMeetingW extends StatelessWidget {
  const NavigationBarMeetingW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 9, bottom: 9, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              readOnly: true,
              showCursor: true,
              enabled: false,
              focusNode: FocusNode(),
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppAssets.send,
                      color: AppColors.blue, height: 10),
                ),
                hintText: 'Type message',
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const CircleButton(
              iconSvg: AppAssets.opine, iconHeight: 25, padding: 10),
          const SizedBox(
            width: 10,
          ),
          const CircleButton(
              iconSvg: AppAssets.closedMicrophone, iconHeight: 25, padding: 10),
          const SizedBox(
            width: 10,
          ),
          const CircleButton(
              fillColor: AppColors.red,
              iconSvg: AppAssets.signOut,
              iconColor: AppColors.white,
              iconHeight: 25,
              padding: 10),
        ],
      ),
    );
  }
}
