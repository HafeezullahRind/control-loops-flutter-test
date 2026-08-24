import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';
import 'package:flutter_test_app/shared_widget/rate_badget.dart';

class ProviderCard extends StatelessWidget {
  final ProviderItem provider;
  final bool? isSaved;
  final VoidCallback? onToggleSave;

  const ProviderCard({
    super.key,
    required this.provider,
    this.isSaved,
    this.onToggleSave,
  });

  @override
  Widget build(BuildContext context) {
    final saved = isSaved ?? provider.isSaved;

    return Container(
      width: 361.w,
      height: 113.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFB5B5B5).withValues(alpha: 0.24),
            offset: Offset(0, 16.h),
            blurRadius: 48.r,
            spreadRadius: 3.r,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 12.w,
            top: 12.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.r),
              child: Image.network(
                provider.image,
                width: 90.w,
                height: 89.h,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) {
                  return Container(
                    width: 90.w,
                    height: 89.h,
                    color: const Color(0xFFD8D8D8),
                  );
                },
              ),
            ),
          ),

          Positioned(
            left: 114.w,
            top: 12.h,
            child: SizedBox(
              width: 130.w,
              height: 85.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  SizedBox(
                    height: 25.h,
                    child: Text(
                      provider.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: AppFonts.gilroy,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                        color: const Color(0xFF1B1B1B),
                      ),
                    ),
                  ),

                  SizedBox(height: 4.h),

                  SizedBox(
                    height: 28.h,
                    child: Row(
                      children: [
                        RatingBadge(rating: provider.rating),

                        SizedBox(width: 5.w),

                        Flexible(
                          child: Text(
                            provider.reviews,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: AppFonts.gilroy,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              color: const Color(0xFF676767),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    provider.price,
                    style: TextStyle(
                      fontFamily: AppFonts.gilroy,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: const Color(0xFF1B1B1B),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            right: 12.w,
            top: 12.h,
            child: GestureDetector(
              onTap: onToggleSave,
              child: SizedBox(
                width: 24.w,
                height: 24.h,
                child: Icon(
                  saved ? Icons.bookmark : Icons.bookmark_border,
                  size: 24.sp,
                  color: ColorConstant.primary,
                ),
              ),
            ),
          ),

          Positioned(
            right: 16.w,
            top: 63.h,
            child: SizedBox(
              width: 68.w,
              height: 38.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstant.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  AppStrings.book,
                  style: TextStyle(
                    fontFamily: AppFonts.gilroy,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

