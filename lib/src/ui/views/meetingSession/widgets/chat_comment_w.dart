import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/app_colors.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/circle_avatar_w.dart';

class ChatCommentW extends StatelessWidget {
  final Comments comment;
  const ChatCommentW({Key? key, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatarW(
              photo: comment.photo,
              maxRadius: 25,
              fillColor: comment.avatarColor),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment.name,
                style:
                    textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                comment.writingTime,
                style: textTheme.caption!.copyWith(
                    color: AppColors.grey, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                comment.description,
                style: textTheme.caption!.copyWith(color: AppColors.black),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
