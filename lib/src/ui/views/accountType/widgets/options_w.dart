import 'package:flutter/material.dart';
import 'package:ui_team_management/src/api/data/data.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/components/circle_button.dart';

class OptionsW extends StatelessWidget {
  const OptionsW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          itemExtent: 120,
          children: accountTypes
              .map((item) => Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: item.name == 'Team'
                            ? AppTheme.selectionBoxshadow()
                            : []),
                    child: Row(
                      children: [
                        CircleButton(
                          fillColor: Color(item.fillColor),
                          iconSvg: item.icon,
                          iconColor: Color(item.iconColor),
                          iconHeight: item.iconHeight,
                          padding: item.padding,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  item.description,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .button!
                                      .copyWith(),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
