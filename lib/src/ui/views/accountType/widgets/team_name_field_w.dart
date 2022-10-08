import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';

class TeamNameFieldW extends StatelessWidget {
  const TeamNameFieldW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctlTeamName = TextEditingController(text: 'Quari Lab');
    return Expanded(
      child: TextFormField(
        controller: ctlTeamName,
        style: const TextStyle(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20.0),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: SvgPicture.asset(AppAssets.team,
                color: AppColors.black, height: 27),
          ),
          hintText: 'Account name',
        ),
      ),
    );
  }
}
