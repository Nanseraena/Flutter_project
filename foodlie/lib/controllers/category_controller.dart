import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxString category = " ".obs;

  String get categoryValue => category.value;
  set updateCategory(String value){
    category.value = value;
  } 
  RxString title = " ".obs;

  set updateTitle(String value){
    title.value = value;
  }

}