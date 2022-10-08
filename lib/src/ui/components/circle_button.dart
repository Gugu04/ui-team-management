import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';

class CircleButton extends StatelessWidget {
  final Color? borderColor;
  final String? iconSvg;
  final Color? iconColor;
  final double? iconHeight;
  final Color? fillColor;
  final double? borderWidth;
  final double? padding;
  final BoxShadow? boxShadow;
  const CircleButton(
      {Key? key,
      this.borderColor = AppColors.lightGrey2,
      required this.iconSvg,
      this.iconColor,
      this.iconHeight,
      this.fillColor = AppColors.white,
      this.borderWidth = 1,
      this.padding = 10,
      this.boxShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          color: fillColor,
          shape: BoxShape.circle,
          border: Border.all(width: borderWidth!, color: borderColor!),
          boxShadow: boxShadow != null ? [boxShadow!] : null),
      child: iconSvg != null
          ? SvgPicture.asset(
              iconSvg!,
              color: iconColor,
              height: iconHeight,
            )
          : null,
    );
  }
}
