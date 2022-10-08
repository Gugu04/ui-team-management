import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/circle_avatar_w.dart';

class MultipleAvatarCirclesW extends StatelessWidget {
  final Tasks task;
  final double? maxRadius;
  const MultipleAvatarCirclesW(
      {Key? key, required this.task, this.maxRadius = 11.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            task.members.length - 2,
            (i) => Align(
                alignment: Alignment.centerLeft,
                widthFactor: 0.65,
                child: CircleAvatarW(
                    photo: task.members[i].photo,
                    maxRadius: maxRadius!,
                    fillColor: members[i].avatarColor))));
  }
}
