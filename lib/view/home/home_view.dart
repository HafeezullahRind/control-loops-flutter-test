import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/shared_widget/providers_list.dart';
import 'package:flutter_test_app/view/home/widgets/home_topbar.dart';
import 'package:flutter_test_app/view/home/widgets/service_grid_wiget.dart';
import 'package:flutter_test_app/view/home/widgets/services_overview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeTopbar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ServicesOverview(title: AppStrings.services, onSeeAll: () {}),
                  const ServicesGrid(),
                  SizedBox(height: 32.h),
                  ServicesOverview(title: AppStrings.topProviders, onSeeAll: () {}),
                  SizedBox(height: 16.h),
                  const ProvidersList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
