import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../theme/colors.dart';
import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MedAppText('Developed by: Abe Toluwani',
            textAlign: TextAlign.center, color: AppColors.white),
        vSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.github, color: AppColors.white),
            hSpace(10),
            const Icon(FontAwesomeIcons.linkedin, color: AppColors.white),
            hSpace(10),
            const Icon(FontAwesomeIcons.medium, color: AppColors.white),
            hSpace(20),
            SmallAppText('@abetoluwani', color: AppColors.white),
          ],
        )
      ],
    );
  }
}
