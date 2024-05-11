import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';
import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';
import '../../controllers/homepage_controller.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
    required this.controller,
  });

  final HomepageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BigAppText(
          'TIC TAC TOE GAME',
          color: AppColors.white,
        ),
        vSpace(20),
        //Score Board
        BigAppText(
          'Score Board',
          color: AppColors.white,
        ),
        vSpace(20),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  BigAppText(
                    'Player X',
                    color: AppColors.white,
                  ),
                  vSpace(10),
                  MedAppText(controller.xscore.toString(),
                      color: AppColors.white),
                ],
              ),
              Column(
                children: [
                  BigAppText(
                    'Player O',
                    color: AppColors.white,
                  ),
                  vSpace(10),
                  MedAppText(controller.oscore.toString(),
                      color: AppColors.white),
                ],
              )
            ])
      ],
    );
  }
}
