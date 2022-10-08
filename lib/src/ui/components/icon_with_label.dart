import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';

class IconWithLabel extends StatelessWidget {
  final Color color;
  final String tag;
  final String icon;
  final Color? textColor;
  final bool? center;
  const IconWithLabel(
      {Key? key,
      required this.color,
      required this.tag,
      required this.icon,
      this.textColor = AppColors.black,
      this.center = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          center! ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        SvgPicture.asset(icon, height: 17, color: color),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            tag,
            maxLines: 1,
            style:
                Theme.of(context).textTheme.caption!.copyWith(color: textColor),
          ),
        )
      ],
    );
  }
}
