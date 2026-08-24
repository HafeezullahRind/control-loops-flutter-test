import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/home/server_item_model.dart';

class ServiceItemWidget extends StatelessWidget {
  final ServiceItem service;

  const ServiceItemWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 80.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon circle
          Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: ColorConstant.lightBackground,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(service.icon, width: 28.w, height: 28.h),
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: 70.w,
            child: Text(
              service.name,
              maxLines: 1,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppFonts.gilroy,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.4,
                color: const Color(0xFF1B1B1B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
