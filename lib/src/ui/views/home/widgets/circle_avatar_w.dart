import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/app_colors.dart';

class CircleAvatarW extends StatelessWidget {
  final String photo;
  final double maxRadius;
  final int fillColor;
  final Color? borderColor;
  final double? padding;
  const CircleAvatarW(
      {Key? key,
      required this.photo,
      required this.maxRadius,
      required this.fillColor,
      this.borderColor = AppColors.white,
      this.padding = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(shape: BoxShape.circle, color: borderColor),
      child: CircleAvatar(
        backgroundColor: Color(fillColor),
        maxRadius: maxRadius,
        backgroundImage: AssetImage(photo),
      ),
    );
  }
}
