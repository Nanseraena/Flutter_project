import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlie/constants/constants.dart';
import 'package:foodlie/views/home/widgets/category_list.dart';
import 'package:foodlie/views/shared_widgets/custom_container.dart';
import 'package:foodlie/views/shared_widgets/custome_appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(130.h), child: const CustomAppBar(),),
      body: SafeArea(
        child: CustomContainer(containerContent: Column(
          children: [
            CategoryList(),
          ],
        )),
      )
    );
  }
}