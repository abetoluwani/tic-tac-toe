import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/app/theme/colors.dart';
import 'package:tictactoe/app/widgets/apptext.dart';
import '../controllers/homepage_controller.dart';
import 'widgets/socials.dart';
import 'widgets/topbar.dart';

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
        controller.displayxando[index] = 'X';
        controller.filledboxes++;
      } else if (!firstperson && controller.displayxando[index] == '') {
        controller.displayxando[index] = 'O';
        controller.filledboxes++;
      }
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
                flex: 2,
                child: SizedBox(
                  width: Get.width,
                  child: AppTopBar(controller: controller),
                ),
              ),
              Expanded(
                flex: 4,
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
              const Expanded(
                child: Socials(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
