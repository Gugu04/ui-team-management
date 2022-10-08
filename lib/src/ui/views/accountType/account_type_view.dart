import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/views/accountType/widgets/options_w.dart';
import 'package:ui_team_management/src/ui/views/accountType/widgets/team_w.dart';

class AccountTypeView extends StatefulWidget {
  const AccountTypeView({Key? key}) : super(key: key);

  @override
  State<AccountTypeView> createState() => _AccountTypeViewState();
}

class _AccountTypeViewState extends State<AccountTypeView> {
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
      backgroundColor: AppColors.lightblue2,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Choose accouny type",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const OptionsW(),
            const TeamW()
          ],
        ),
      ),
    );
  }
}
