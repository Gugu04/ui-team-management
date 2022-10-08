import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/circle_avatar_w.dart';

class UsersConnectedSessionW extends StatelessWidget {
  const UsersConnectedSessionW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.23,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  left: 10,
                  child: CircleAvatarW(
                      photo: members[2].photo,
                      maxRadius: 25,
                      fillColor: members[2].avatarColor),
                ),
                Positioned(
                  top: 5,
                  right: 25,
                  child: CircleAvatarW(
                      photo: members[3].photo,
                      maxRadius: 12,
                      fillColor: members[3].avatarColor),
                ),
                Positioned(
                  top: 33,
                  right: 30,
                  child: CircleAvatarW(
                      photo: members[4].photo,
                      maxRadius: 25,
                      fillColor: members[4].avatarColor),
                )
              ],
            ),
          ),
          Text(
            '+${members.length - 3} more',
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
