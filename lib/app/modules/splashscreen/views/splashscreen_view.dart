import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/app/constants/images.dart';
import 'package:tictactoe/app/theme/colors.dart';
import 'package:tictactoe/app/widgets/appbutton.dart';
import 'package:tictactoe/app/widgets/apptext.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: BigAppText(
              "TIC TAC TOE",
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: AvatarGlow(
            duration: const Duration(seconds: 2),
            glowColor: Colors.white,
            repeat: true,
            startDelay: const Duration(seconds: 1),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.none,
                  ),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundColor: AppColors.grey,
                radius: 80.0,
                child: Image.asset(AppImages.logo),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.offAllNamed(Routes.HOMEPAGE);
          },
          child: const AppElevatedButton(
          
            title: 'Play',
          ),
        ),
      ],
    ));
  }
}
