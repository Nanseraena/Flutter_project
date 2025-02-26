import 'package:flutter/material.dart';
import 'package:foodlie/views/home/home_page.dart';
import 'package:foodlie/views/cart/cart_page.dart';
import 'package:foodlie/views/search/search_page.dart';
import 'package:foodlie/views/profile/profile_page.dart';
import 'package:get/get.dart';
import 'package:foodlie/constants/constants.dart';
import 'package:foodlie/controllers/tab_index_controller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:badges/badges.dart' as badges;


class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.put(TabIndexController());

  final List<Widget> pagesList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pagesList[controller.tabIndex.value],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: kPrimary),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedIconTheme: const IconThemeData(color: Colors.black38),
              selectedIconTheme: const IconThemeData(color: kSecondary),
              onTap: (value) {
                controller.setTabIndex(value);
              },
              currentIndex: controller.tabIndex.value,
              items: [
                BottomNavigationBarItem(
                  icon: controller.tabIndex.value == 0
                      ? const Icon(AntDesign.home)
                      : const Icon(AntDesign.home),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                const BottomNavigationBarItem(
                    icon: badges.Badge(
                      badgeContent: Text("1"),
                      child: Icon(FontAwesome.opencart),
                    ),
                    label: 'Cart'),
                BottomNavigationBarItem(
                  icon: controller.tabIndex.value == 3
                      ? const Icon(FontAwesome.user_circle)
                      : const Icon(FontAwesome.user_circle_o),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ));
  }
}
