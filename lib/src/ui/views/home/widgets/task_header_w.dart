import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_team_management/src/api/data/data.dart';

class TaskHeaderW extends StatelessWidget {
  final Tasks task;
  const TaskHeaderW({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color(task.fillColor)),
            child: SvgPicture.asset(task.icon,
                height: 28,
                color: task.iconColor != null ? Color(task.iconColor!) : null),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.name,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.button,
                ),
                Text(
                  task.category.name,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Color(task.category.color),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
