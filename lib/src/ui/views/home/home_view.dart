import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/icon_with_label.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/aapbar_home_w.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/details_table_w.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/meet_w.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/navigation_bar_home_w.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/task_header_w.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/team_members_w.dart';
import 'package:ui_team_management/src/ui/views/home/widgets/title_tag_w.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
          children: [
            const AppbarHomeW(),
            const MeetW(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TeamMembers(),
                  const SizedBox(
                    height: 20,
                  ),
                  const TitleTagW(tag1: 'Team Members'),
                  const SizedBox(
                    height: 20,
                  ),
                  AspectRatio(
                    aspectRatio: 1.8,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: tasks
                          .map((task) => AspectRatio(
                                aspectRatio: 1.6,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border:
                                          Border.all(color: AppColors.blue)),
                                  child: Column(
                                    children: [
                                      TaskHeaderW(task: task),
                                      Row(
                                        children: [
                                          IconWithLabel(
                                              icon: AppAssets.docs,
                                              color: AppColors.grey2,
                                              tag: '${task.files} file'),
                                          const SizedBox(
                                            width: 25,
                                          ),
                                          IconWithLabel(
                                              icon: AppAssets.comment,
                                              color: AppColors.grey2,
                                              tag: '${task.comments} comment'),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      DetailsTableW(task: task)
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ))
          ],
        ),
      )),
      bottomNavigationBar: const NavigationBarHomeW(),
    );
  }
}
