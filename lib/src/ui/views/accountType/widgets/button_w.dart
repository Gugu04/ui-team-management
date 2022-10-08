import 'package:flutter/material.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';
import 'package:ui_team_management/src/ui/views/home/home_view.dart';

class ButtonW extends StatelessWidget {
  const ButtonW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [AppTheme.boxShadowBlue()]),
          child: Text(
            'Continue',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold, color: AppColors.white),
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        ),
      ),
    );
  }
}
