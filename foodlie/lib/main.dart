import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlie/controllers/tab_index_controller.dart';
import 'package:foodlie/views/entrypoint.dart';
import 'package:get/get.dart'; // Use GetX correctly
// Ensure this path is correct
 // Ensure this is correct or update the path

const kDark = Colors.black; // Define the kDark color constant
const kOffWhite = Color(0xFFF8F8F8); // Define the kOffWhite color constant

void main() {
  Get.put(TabIndexController()); // Ensure TabIndexController is defined in the imported file
  Get.put(TabIndexController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
  designSize: const Size(375, 825),
  minTextAdapt: true,
  splitScreenMode: true,
  builder: (context, child) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodly',
      theme: ThemeData(
        scaffoldBackgroundColor: kOffWhite,
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStateProperty.all(kDark),
          ),
        ),
        primaryColor: Colors.grey,
      ),
      home: child ?? MainScreen(),  // Ensure `child` is not null
    );
  },
  child: MainScreen(),  // Provide a child
);
  }
}
 
