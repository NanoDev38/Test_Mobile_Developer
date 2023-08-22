import 'package:get/get.dart';

class displayAnswerController extends GetxController {
  static displayAnswerController get to => Get.find();
  RxList answer = [].obs;

  void displayOne(int numberN) {
    answer.clear();
    if (numberN > 0) {
      for (int i = 0; i < numberN; i++) {
        answer.add(i + 1);
      }
    }
    update();
  }

  void displayTwo(int numberN) {
    answer.clear();
    if (numberN > 0) {
      for (int i = 0; i < numberN; i++) {
        answer.add(i + 1);
      }

      for (int i = 0; i < numberN - 1; i++) {
        answer.add(numberN - (i + 1));
      }
    }
    update();
  }

  void displayThree(int numberN) {
    answer.clear();
    if (numberN > 0) {
      for (int i = 0; i < numberN; i++) {
        if (i > 0) {
          answer.add(10 + ((10 * i) + (i + 1 - 1)));
        } else {
          answer.add(10);
        }
      }
    }
    update();
  }

  void displayFour(int numberN) {
    answer.clear();
    if (numberN > 0) {
      for (int i = 0; i < numberN; i++) {
        if ((i + 1) % 5 == 0) {
          answer.add("LIMA");
        } else if ((i + 1) % 7 == 0) {
          answer.add("TUJUH");
        } else {
          answer.add(i + 1);
        }
      }
    }
    update();
  }
}
