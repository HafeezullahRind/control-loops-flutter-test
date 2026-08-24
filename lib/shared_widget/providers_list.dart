import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/core/utils/app_routes.dart';

import 'package:flutter_test_app/model/provider_model.dart';
import 'package:flutter_test_app/shared_widget/provider_card.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ProvidersList extends StatelessWidget {
  final List<ProviderItem>? providersList;
  final Set<String>? savedProviderNames;
  final void Function(String name)? onToggleSave;

  const ProvidersList({
    super.key,
    this.providersList,
    this.savedProviderNames,
    this.onToggleSave,
  });

  static const providers = [
    ProviderItem(
      name: 'Jonathan Ken',
      rating: '4.9',
      reviews: '1.5k reviews',
      price: '\$30/hr',
      image: 'https://i.pravatar.cc/300?img=12',
      isSaved: true,
      address: 'Villa 27, Street 12, Al Barsha 2, Dubai',
      description:
          'Hi, I\'m Jonathan Ken — a professional home cleaner '
          'with over 5 years of experience delivering top-quality '
          'cleaning services across Dubai.',
      numberOfStaffs: '14 staffs',
      overallRating: '4.9',
      totalBookings: '12',
      servicesOffered: ['Cleaning', 'Laundry', 'Cooking'],
      reviewRating: '4.9',
      pricePerHour: '\$30/hr',
    ),
    ProviderItem(
      name: 'Elliot James',
      rating: '4.5',
      reviews: '1.1k reviews',
      price: '\$25/hr',
      image: 'https://i.pravatar.cc/300?img=11',
      address: 'Apt 5B, Marina Walk, Dubai Marina, Dubai',
      description:
          'Hi, I\'m Elliot James — a skilled carpenter '
          'with 3 years of hands-on experience building and restoring '
          'furniture for homes across Dubai.',
      numberOfStaffs: '6 staffs',
      overallRating: '4.5',
      totalBookings: '8',
      servicesOffered: ['Carpentry', 'Painting', 'Logistics'],
      reviewRating: '4.5',
      pricePerHour: '\$25/hr',
    ),
    ProviderItem(
      name: 'Sarah Milner',
      rating: '4.7',
      reviews: '1.4k reviews',
      price: '\$28/hr',
      image: 'https://i.pravatar.cc/300?img=47',
      address: 'Unit 3, Jumeirah Lakes Towers, Dubai',
      description:
          'Hi, I\'m Sarah Milner — a professional cook '
          'with over 6 years of experience preparing healthy '
          'home-cooked meals for families in Dubai.',
      numberOfStaffs: '4 staffs',
      overallRating: '4.7',
      totalBookings: '10',
      servicesOffered: ['Cooking', 'Laundry'],
      reviewRating: '4.7',
      pricePerHour: '\$28/hr',
    ),
    ProviderItem(
      name: 'Sam Davies',
      rating: '4.6',
      reviews: '2.2k reviews',
      price: '\$22/hr',
      image: 'https://i.pravatar.cc/300?img=33',
      address: 'Block C, Discovery Gardens, Dubai',
      description:
          'Hi, I\'m Sam Davies — a licensed plumber and '
          'electrician with 7 years of experience handling residential '
          'repairs and installations across Dubai.',
      numberOfStaffs: '9 staffs',
      overallRating: '4.6',
      totalBookings: '15',
      servicesOffered: ['Plumbing', 'Electric work'],
      reviewRating: '4.6',
      pricePerHour: '\$22/hr',
    ),
    ProviderItem(
      name: 'Jane Mia',
      rating: '4.8',
      reviews: '1.3k reviews',
      price: '\$28/hr',
      image: 'https://i.pravatar.cc/300?img=44',
      address: 'Villa 10, Al Wasl Road, Jumeirah 1, Dubai',
      description:
          'Hi, I\'m Jane Mia — a professional laundry and '
          'cleaning specialist with 4 years of experience keeping '
          'homes fresh and spotless across Dubai.',
      numberOfStaffs: '5 staffs',
      overallRating: '4.8',
      totalBookings: '9',
      servicesOffered: ['Laundry', 'Cleaning'],
      reviewRating: '4.8',
      pricePerHour: '\$28/hr',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final list = providersList ?? providers;

    if (list.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Text(
            'No providers found',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 16.sp,
              color: const Color(0xFF8E8E8E),
            ),
          ),
        ),
      );
    }

    return Column(
      children: list.asMap().entries.map((entry) {
        final index = entry.key;
        final provider = entry.value;
        final saved =
            savedProviderNames?.contains(provider.name) ?? provider.isSaved;

        return TweenAnimationBuilder<double>(
          key: ValueKey('provider_${provider.name}'),
          tween: Tween(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 300 + (index * 55)),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, (1 - value) * 24.h),
                child: child,
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.providerDetail, arguments: provider);
              },
              child: ProviderCard(
                provider: provider,
                isSaved: saved,
                onToggleSave: onToggleSave != null
                    ? () => onToggleSave!(provider.name)
                    : null,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
