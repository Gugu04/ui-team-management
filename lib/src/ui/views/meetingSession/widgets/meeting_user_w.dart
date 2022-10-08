import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';

class MeetingUserW extends StatelessWidget {
  final String name;
  final String photo;
  const MeetingUserW({Key? key, required this.name, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.32,
          height: MediaQuery.of(context).size.height * 0.2,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(photo, fit: BoxFit.fitHeight)),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const CircleButton(
                    iconSvg: AppAssets.closedMicrophone,
                    iconHeight: 16,
                    padding: 5)
              ],
            ),
          ),
        ))
      ],
    );
  }
}
