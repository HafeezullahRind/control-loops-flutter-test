import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/shared_widget/providers_list.dart';
import 'package:flutter_test_app/view/service_category/controller/service_category_controller.dart';
import 'package:flutter_test_app/view/service_category/widgets/service_header.dart';
import 'package:get/get.dart';

class ServiceCategoryView extends StatelessWidget {
  final String categoryName;
  final bool showBackButton;

  const ServiceCategoryView({
    super.key,
    required this.categoryName,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ServiceCategoryController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(context, categoryName, showBackButton),
          SizedBox(height: 24.h),
          _buildSearchRow(controller),
          SizedBox(height: 20.h),
          Expanded(
            child: Obx(() {
              return SingleChildScrollView(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                child: ProvidersList(
                  providersList: controller.filteredProviders,
                  savedProviderNames: controller.savedProviders,
                  onToggleSave: controller.toggleSave,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchRow(ServiceCategoryController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: ColorConstant.primary.withValues(alpha: 0.4),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Image.asset(AppIcons.searchIcon, width: 16.w, height: 16.h),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Obx(
                      () => TextField(
                        controller: controller.searchController,
                        onChanged: controller.onSearchChanged,
                        style: TextStyle(
                          fontFamily: AppFonts.gilroy,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF1B1B1B),
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: AppStrings.searchProviders,
                          hintStyle: TextStyle(
                            fontFamily: AppFonts.gilroy,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                            color: const Color(0xFF8E8E8E),
                          ),
                          suffixIcon: controller.searchQuery.value.isNotEmpty
                              ? GestureDetector(
                                  onTap: controller.clearSearch,
                                  child: Icon(
                                    Icons.clear,
                                    size: 18.sp,
                                    color: const Color(0xFF8E8E8E),
                                  ),
                                )
                              : null,
                          suffixIconConstraints: BoxConstraints(
                            minWidth: 20.w,
                            minHeight: 20.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            width: 52.w,
            height: 44.h,
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: ColorConstant.primary.withValues(alpha: 0.4),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFB5B5B5).withValues(alpha: 0.24),
                  offset: Offset(0, 16.h),
                  blurRadius: 48.r,
                  spreadRadius: 3.r,
                ),
              ],
            ),
            child: Image.asset(AppIcons.filterIcon, width: 20.w, height: 20.h),
          ),
        ],
      ),
    );
  }
}
