import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tictactoe/app/theme/colors.dart';
import 'package:tictactoe/app/widgets/apptext.dart';
import 'package:tictactoe/app/widgets/space.dart';
import '../controllers/homepage_controller.dart';

// ignore: must_be_immutable
class HomepageView extends StatefulWidget {
  const HomepageView({
    super.key,
  });

  @override
  _HomepageViewState createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  final HomepageController controller = Get.put(HomepageController());
  bool firstperson = true; // the first player is O
  void tapped(int index) {
    setState(() {
      //displayxando = displayxando == 'X' ? 'O' : 'X';
      if (firstperson && controller.displayxando[index] == '') {
        // displayxando[index] = 'X';
        controller.displayxando[index] = 'X';
      } else if (!firstperson && controller.displayxando[index] == '') {
        controller.displayxando[index] = 'O';
      }
      // else {
      //   controller.displayxando[index] = 'O';
      // }
      firstperson = !firstperson;
      controller.checkwinner();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: Get.width,
                  child: Column(
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
                  ),
                ),
              ),
              vSpace(40),
              Expanded(
                flex: 3,
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        tapped(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey, width: 0.5),
                        ),
                        child: Center(
                          child: BigAppText(controller.displayxando[index],
                              color: AppColors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
