import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/appbar_metting_w.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/chat_w.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/host_w.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/navigation_bar_meeting_w.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/widgets/sliver_app_bar_w.dart';

class MeetingSessionView extends StatefulWidget {
  const MeetingSessionView({Key? key}) : super(key: key);

  @override
  State<MeetingSessionView> createState() => _MeetingSessionViewState();
}

class _MeetingSessionViewState extends State<MeetingSessionView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            AppbarMettingW(),
            SizedBox(
              height: 20,
            ),
            HostW(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [SliverAppBarW(), ChatW()],
            )),
          ],
        ),
      )),
      bottomNavigationBar: const NavigationBarMeetingW(),
    );
  }
}
