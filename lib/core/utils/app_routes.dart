import 'package:flutter_test_app/model/provider_model.dart';
import 'package:flutter_test_app/view/home/home_view.dart';
import 'package:flutter_test_app/view/main_navigation.dart';
import 'package:flutter_test_app/view/service_category/service_category.dart';
import 'package:flutter_test_app/view/provider_detail/provider_detail_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  // Route name constants
  static const String navigation = '/navigation';
  static const String home = '/home';
  static const String serviceCategory = '/service-category';
  static const String providerDetail = '/provider-detail';

  static final List<GetPage> pages = [
    GetPage(name: navigation, page: () => const MainNavigation()),
    GetPage(name: home, page: () => const HomeView()),
    GetPage(
      name: serviceCategory,
      page: () => ServiceCategoryView(categoryName: Get.arguments as String? ?? ''),
    ),
    GetPage(
      name: AppRoutes.providerDetail,
      page: () => ProviderDetailView(provider: Get.arguments as ProviderItem),
    ),
  ];
}
