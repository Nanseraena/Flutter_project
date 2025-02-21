import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlie/views/entrypoint.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



Widget defaultHome =  const MainScreen();
  
const kDark = Colors.black; // Define the kDark color constant
const kOffWhite = Color(0xFFF8F8F8); // Define the kOffWhite color constant

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foodly',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
           scaffoldBackgroundColor: kOffWhite,
           iconButtonTheme: IconButtonThemeData(
             style: ButtonStyle(
               iconColor: MaterialStateProperty.all(kDark),
             ),
           ),
            primaryColor: Colors.grey
          ),
          home: const MainScreen(),
        );
      },
  
    );
  }
}

