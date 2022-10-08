import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/views/accountType/account_type_view.dart';
import 'package:ui_team_management/src/ui/views/home/home_view.dart';
import 'package:ui_team_management/src/ui/views/meetingSession/meeting_session_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.ligthTheme,
        home: AccountTypeView());
  }
}
