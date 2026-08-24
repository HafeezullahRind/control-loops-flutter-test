import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/core/utils/app_routes.dart';
import 'package:flutter_test_app/model/home/server_item_model.dart';
import 'package:flutter_test_app/view/home/widgets/server_item_widget.dart';
import 'package:get/get.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  static const services = [
    ServiceItem(name: AppStrings.cleaning, icon: AppIcons.cleaning),
    ServiceItem(name: AppStrings.carpentry, icon: AppIcons.carpentry),
    ServiceItem(name: AppStrings.laundry, icon: AppIcons.laundry),
    ServiceItem(name: AppStrings.painting, icon: AppIcons.painting),
    ServiceItem(name: AppStrings.logistics, icon: AppIcons.logistics),
    ServiceItem(name: AppStrings.cooking, icon: AppIcons.cooking),
    ServiceItem(name: AppStrings.electricWork, icon: AppIcons.electricWork),
    ServiceItem(name: AppStrings.plumbing, icon: AppIcons.plumbing),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 27.w,
        mainAxisSpacing: 20.h,
        mainAxisExtent: 80.h,
      ),
      itemBuilder: (context, index) {
        return TweenAnimationBuilder<double>(
          key: ValueKey('service_$index'),
          tween: Tween(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 300 + (index * 45)),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, (1 - value) * 20.h),
                child: child,
              ),
            );
          },
          child: GestureDetector(
            onTap: () => Get.toNamed(
              AppRoutes.serviceCategory,
              arguments: services[index].name,
            ),
            child: ServiceItemWidget(service: services[index]),
          ),
        );
      },
    );
  }
}
