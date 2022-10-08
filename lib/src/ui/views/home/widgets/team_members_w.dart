import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/title_tag_w.dart';

class TeamMembers extends StatelessWidget {
  const TeamMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const TitleTagW(tag1: 'Team Members'),
        const SizedBox(
          height: 10,
        ),
        AspectRatio(
          aspectRatio: 3.5,
          child: Container(
            padding: const EdgeInsets.only(left: 14),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: members
                  .map((item) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(item.avatarColor),
                              maxRadius: 35,
                              minRadius: 30,
                              child: ClipOval(child: Image.asset(item.photo)),
                            ),
                            Text(
                              item.name,
                              style: textTheme.subtitle1,
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
