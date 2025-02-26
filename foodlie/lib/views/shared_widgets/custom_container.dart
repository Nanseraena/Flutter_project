import 'package:flutter/material.dart';
import 'package:foodlie/constants/constants.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {


   CustomContainer({Key? key, required this.containerContent}) : super(key: key);
  Widget containerContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.3),
          bottomRight: Radius.circular(0.3),
        ),
        child: Container(
         width: width,
         color: kOffWhite,
         child: SingleChildScrollView(
          child: containerContent ,) 
        ),
      ),


    );
  }
}