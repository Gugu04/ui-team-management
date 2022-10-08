import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';
import 'package:ui_team_management/src/ui/components/icon_with_label.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/meet_details_w.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/meeting_session_view.dart';

/*
can be replaced by a list for design-only reasons and not functionality
is implemented as follows
*/

class MeetW extends StatelessWidget {
  const MeetW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.32,
      child: GestureDetector(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColors.purple.withOpacity(0.2),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColors.purple.withOpacity(0.5),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColors.purple,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleButton(
                        fillColor: AppColors.purple2,
                        borderColor: AppColors.purple2,
                        iconSvg: AppAssets.dribble,
                        iconHeight: 25,
                        iconColor: AppColors.white,
                        padding: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting with Dribble",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.white),
                            ),
                            IconWithLabel(
                              color: AppColors.white.withOpacity(0.6),
                              icon: AppAssets.date,
                              tag: '12/06/2022',
                              textColor: AppColors.white.withOpacity(0.6),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        const Expanded(
                          child: MeetDetailsW(),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.purple2)),
                          child: Text(
                            "Join",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: AppColors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MeetingSessionView()),
        ),
      ),
    );
  }
}
