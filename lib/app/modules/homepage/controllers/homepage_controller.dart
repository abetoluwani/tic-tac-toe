import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/app/widgets/appbutton.dart';
import 'package:tictactoe/app/widgets/apptext.dart';

// ignore: must_be_immutable

class HomepageController extends GetxController {
  List<String> displayxando = ['', '', '', '', '', '', '', '', ''];
  final count = 0.obs;
  int xscore = 0;
  int oscore = 0;
  int filledboxes = 0;

  void checkwinner() {
    if (displayxando[0] == displayxando[1] &&
        displayxando[0] == displayxando[2] &&
        displayxando[0] != '') {
      showdialog(displayxando[0]);
    }

    if (displayxando[3] == displayxando[4] &&
        displayxando[3] == displayxando[5] &&
        displayxando[3] != '') {
      showdialog(displayxando[3]);
    }

    if (displayxando[6] == displayxando[7] &&
        displayxando[6] == displayxando[8] &&
        displayxando[6] != '') {
      showdialog(displayxando[6]);
    }

    if (displayxando[0] == displayxando[3] &&
        displayxando[0] == displayxando[6] &&
        displayxando[0] != '') {
      showdialog(displayxando[0]);
    }

    if (displayxando[1] == displayxando[4] &&
        displayxando[1] == displayxando[7] &&
        displayxando[1] != '') {
      showdialog(displayxando[1]);
    }

    if (displayxando[2] == displayxando[5] &&
        displayxando[2] == displayxando[8] &&
        displayxando[2] != '') {
      showdialog(displayxando[2]);
    }

    if (displayxando[0] == displayxando[4] &&
        displayxando[0] == displayxando[8] &&
        displayxando[0] != '') {
      showdialog(displayxando[0]);
    }

    if (displayxando[2] == displayxando[4] &&
        displayxando[2] == displayxando[6] &&
        displayxando[2] != '') {
      showdialog(displayxando[2]);
    } else if (filledboxes == 9) {
      showdrawdialog();
    }

    // if (!displayxando.contains('')) {
    //   showdialog();
    // }
  }

  void showdialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: BigAppText(
              'Winner is $winner',
              textAlign: TextAlign.center,
            ),
            actions: [
              AppElevatedButton(
                  title: 'Play Again',
                  onPressed: () {
                    clearboard();
                    Get.back();
                  }),
            ],
          );
        });
    if (winner == 'X') {
      xscore++;
    } else {
      oscore++;
    }
    clearboard();
  }

  void clearboard() async {
    for (int i = 0; i < 9; i++) {
      displayxando[i] = '';
    }
    filledboxes = 0;
  }

  void showdrawdialog() {
    showDialog(
        barrierDismissible: false,
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
              title: BigAppText(
                'DRAW',
              ),
              actions: [
                AppElevatedButton(
                    title: 'Play Again',
                    onPressed: () {
                      clearboard();
                      Get.back();
                    })
              ]);
        });
  }
}
