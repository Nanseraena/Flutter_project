import 'package:get/get.dart';

class TabIndexController extends GetxController {
  var tabIndex = 0.obs;

  void setTabIndex(int index) {
    tabIndex.value = index;
  }
}