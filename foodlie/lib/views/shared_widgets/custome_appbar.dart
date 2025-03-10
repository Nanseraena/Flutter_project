import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlie/constants/constants.dart';
import 'package:foodlie/views/shared_widgets/app_styles.dart';
import 'package:foodlie/views/shared_widgets/reusable_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      height: 130.h,
      width: width,
      color: kOffWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 23.r,
                backgroundColor: kSecondary,
                backgroundImage:
                    const NetworkImage('https://i.pravatar.cc/150?img=1'),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: "Deliver to ...",
                          style:
                              appStyle(13, kSecondary, FontWeight.w600, 1.2)),
                      SizedBox(
                        width: width * 0.65,
                        child: Text("123 Main St, Springfield, USA",
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(
                                13, kGrayLight, FontWeight.normal, 1.2)),
                      ),
                    ],
                  )),
            ],
          ),
          Text(
            getTimeOfDay(),
            style: const TextStyle(fontSize: 35),
          ),
        ],
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 0 && hour < 12) {
      return " ☀️ ";
    } else if (hour >= 12 && hour < 16) {
      return " 🌤️ ";
    } else {
      return " 🌙 ";
    }
  }
}
