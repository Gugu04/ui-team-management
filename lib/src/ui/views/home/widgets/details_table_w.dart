import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/app_colors.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/multiple_avatar_circles_w.dart';

class DetailsTableW extends StatelessWidget {
  final Tasks task;
  const DetailsTableW({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _row('Status', context, false),
          _row('Deadline', context, true),
          _row('Members', context, true),
        ]),
        TableRow(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
                color: Color(task.status.color!),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              task.status.name,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: AppColors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
                color: AppColors.lightGrey3,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              textAlign: TextAlign.center,
              task.deadline,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: AppColors.black),
            ),
          ),
          MultipleAvatarCirclesW(task: task)
        ]),
      ],
    );
  }
}

Text _row(String tag, BuildContext ctx, bool center) => Text(
      tag,
      textAlign: center ? TextAlign.center : TextAlign.left,
      style: Theme.of(ctx).textTheme.subtitle2,
    );
