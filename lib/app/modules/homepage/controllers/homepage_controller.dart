import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/app/widgets/apptext.dart';

// ignore: must_be_immutable

class HomepageController extends GetxController {
  List<String> displayxando = ['', '', '', '', '', '', '', '', ''];
  final count = 0.obs;

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
    }

    // if (!displayxando.contains('')) {
    //   showdialog();
    // }
  }

  void showdialog(String Winner) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: BigAppText('Winner is $Winner'),
          );
        });
  }
}
