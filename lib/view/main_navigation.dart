import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/view/chat_view/chat_view.dart';

import 'package:flutter_test_app/view/home/home_view.dart';
import 'package:flutter_test_app/view/profile_view/profile_view.dart';
import 'package:flutter_test_app/view/service_category/service_category.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeView(),
    ServiceCategoryView(categoryName: AppStrings.homeCleaning),
    ChatView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: Container(
        height: 62.h,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavItem(
              icon: AppIcons.navHome,
              label: AppStrings.navHome,
              isSelected: currentIndex == 0,
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),

            _NavItem(
              icon: AppIcons.navBooking,
              label: AppStrings.navBookings,
              isSelected: currentIndex == 1,
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),

            _NavItem(
              icon: AppIcons.navMessage,
              label: AppStrings.navChats,
              isSelected: currentIndex == 2,
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),

            _NavItem(
              icon: AppIcons.navProfile,
              label: AppStrings.navProfile,
              isSelected: currentIndex == 3,
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? ColorConstant.primary : const Color(0xFFAAAAAA);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 65.w,
        height: 46.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24.w,
              height: 24.h,
              color: color,
              colorBlendMode: BlendMode.srcIn,
            ),

            SizedBox(height: 2.h),

            Text(
              label,
              style: TextStyle(
                fontFamily: AppFonts.gilroy,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
