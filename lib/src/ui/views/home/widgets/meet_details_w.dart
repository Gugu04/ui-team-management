import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/icon_with_label.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/multiple_avatar_circles_w.dart';

class MeetDetailsW extends StatelessWidget {
  const MeetDetailsW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _row('Particepetns', context, false),
          _row('Event Ovjective', context, true),
        ]),
        TableRow(children: [
          MultipleAvatarCirclesW(task: tasks[1]),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: BoxDecoration(
                  color: AppColors.purple2,
                  borderRadius: BorderRadius.circular(20)),
              child: const IconWithLabel(
                color: AppColors.white,
                icon: AppAssets.zoom,
                tag: 'Zoom',
                textColor: AppColors.white,
                center: true,
              ))
        ]),
      ],
    );
  }
}

Text _row(String tag, BuildContext ctx, bool center) => Text(
      tag,
      textAlign: center ? TextAlign.center : TextAlign.left,
      style:
          Theme.of(ctx).textTheme.subtitle2!.copyWith(color: AppColors.white),
    );
