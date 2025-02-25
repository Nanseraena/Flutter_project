import 'package:flutter/material.dart';
import 'package:foodlie/constants/constants.dart';
import 'package:get/get.dart';
import 'package:foodlie/controllers/tab_index_controller.dart'; // Add this line to import the Controller class
// Make sure this import is correct
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
class MainScreen extends StatelessWidget {
MainScreen({Key? key}) : super(key: key);

final controller = Get.put(TabIndexController()); // Define correctly

@override
Widget build(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;

  return Obx(() => Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: kPrimary,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme:
                      const IconThemeData(color: Colors.black38),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  onTap: (value) {
                    controller.setTabIndex(value);
                  },
                  currentIndex: controller.tabIndex.value,
                  items: [
                    BottomNavigationBarItem(
                    // ignore: unrelated_type_equality_checks
                    icon: controller.tabIndex ==0 ?
                     const Icon(AntDesign.apple1) :
                      const Icon(AntDesign.apple_o), label: 'Home'),
                    const BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: 'Search'),
                    const BottomNavigationBarItem(icon: 
                    Badge(
                      label: Text("1"),
                      child: Icon(FontAwesome.opencart),
                    ), label: 'cart'),
                    BottomNavigationBarItem(
                        // ignore: unrelated_type_equality_checks
                        icon: controller.tabIndex ==3 
                        ?const Icon(FontAwesome.user_circle) 
                        :const Icon(FontAwesome.user_circle_o), label: 'Profile'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ));
}
}

