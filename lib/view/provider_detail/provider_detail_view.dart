import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/model/provider_model.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/about.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_certifications.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_description.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_photos.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_reviews.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_services.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_staff_card.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/provider_statistics.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/service_header.dart';
import 'package:flutter_test_app/view/provider_detail/widgets/service_provider_info.dart';

class ProviderDetailView extends StatelessWidget {
  final ProviderItem provider;

  const ProviderDetailView({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 90.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            serviceHeader(context, provider: provider),
            SizedBox(height: 54.h),

            serviceProviderInfo(context, provider: provider),

            SizedBox(height: 20.h),
            providerStatistics(provider: provider),

            SizedBox(height: 22.h),

            about(context, provider: provider),

            SizedBox(height: 18.h),

            providerServices(provider: provider),

            SizedBox(height: 12.h),

            SizedBox(height: 14.h),

            providerStaffCard(provider: provider),

            SizedBox(height: 20.h),

            providerReviews(provider: provider),

            SizedBox(height: 20.h),

            providerPhotos(provider: provider),

            SizedBox(height: 20.h),

            providerCertifications(provider: provider),
          ],
        ),
      ),
    );
  }
}
