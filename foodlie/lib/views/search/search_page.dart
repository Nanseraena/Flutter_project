import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlie/constants/constants.dart';
import 'package:foodlie/views/shared_widgets/custom_container.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(130.h), child: Container(height: 130.h,),),
      body: SafeArea(
        child: CustomContainer(containerContent: Container()),
      )
    );
  }
}