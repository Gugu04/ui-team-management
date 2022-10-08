import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/app_colors.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/meeting_user_w.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/users_connected_session_w.dart';

class SliverAppBarW extends StatelessWidget {
  const SliverAppBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      expandedHeight: 170.0,
      flexibleSpace: FlexibleSpaceBar(
          background: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MeetingUserW(name: session[1].name, photo: session[1].photo),
          MeetingUserW(name: session[2].name, photo: session[2].photo),
          const UsersConnectedSessionW()
        ],
      )),
    );
  }
}
