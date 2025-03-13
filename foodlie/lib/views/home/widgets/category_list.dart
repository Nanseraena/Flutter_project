import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlie/constants/constants.dart';
import 'package:foodlie/constants/uidata.dart';
import 'package:foodlie/controllers/category_controller.dart';
import 'package:foodlie/views/shared_widgets/app_styles.dart';
import 'package:foodlie/views/shared_widgets/reusable_text.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(CategoryController());
    return Container(
        height: 80.h,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(categories.length, (index) {
              // ignore: unused_local_variable
              var category = categories[index];
              return GestureDetector(
                  onTap: () {
                    if (controller.category == category['-id']) {
                      controller.updateTitle = '';
                      controller.updateCategory = '';
                    } else if (category['value'] == 'more') {
                      Get.to(() => AllCategories(),
                          transition: Transition.fadeIn,
                          duration: Duration(milliseconds: 500));
                    } else {
                      controller.updateTitle = category['title'];
                      controller.updateCategory = category['-id'];
                    }
                    // Add your onTap functionality here
                  },
                  child: Obx(
                    () => Container(
                      margin: EdgeInsets.only(right: 5.w),
                      padding: EdgeInsets.only(bottom: 4.h),
                      width: width * 0.19,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: controller.categoryValue == category['-id']
                                ? kSecondary
                                : kOffWhite,
                            width: 0.5.w),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                            child: Image.network(category['imageUrl'],
                                fit: BoxFit.contain),
                          ),
                          ReusableText(
                              text: category['title'],
                              style: appStyle(12, kDark, FontWeight.normal, 0))
                        ],
                      ),
                    ),
                  ));
            })));
  }
}

class AllCategories {}
