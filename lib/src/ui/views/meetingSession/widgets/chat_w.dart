import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/chat_comment_w.dart';

class ChatW extends StatelessWidget {
  const ChatW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: AppColors.lightGrey,
        ),
        child: Column(
          children: [
            Container(
                width: 70,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.grey3)),
            ...chat.map((item) => ChatCommentW(comment: item)).toList()
          ],
        ),
      ),
    );
  }
}
