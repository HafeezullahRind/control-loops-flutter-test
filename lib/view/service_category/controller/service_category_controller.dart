import 'package:flutter/material.dart';
import 'package:flutter_test_app/model/provider_model.dart';
import 'package:flutter_test_app/shared_widget/providers_list.dart';
import 'package:get/get.dart';

class ServiceCategoryController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final RxString searchQuery = ''.obs;

  late final RxSet<String> savedProviders = ProvidersList.providers
      .where((p) => p.isSaved)
      .map((p) => p.name)
      .toSet()
      .obs;

  List<ProviderItem> get allProviders => ProvidersList.providers;

  List<ProviderItem> get filteredProviders {
    if (searchQuery.value.isEmpty) {
      return allProviders;
    }

    final query = searchQuery.value.toLowerCase();

    return allProviders.where((provider) {
      return provider.name.toLowerCase().contains(query) ||
          provider.address.toLowerCase().contains(query) ||
          provider.description.toLowerCase().contains(query) ||
          provider.servicesOffered.any(
            (service) => service.toLowerCase().contains(query),
          );
    }).toList();
  }

  bool isSaved(String name) => savedProviders.contains(name);

  void toggleSave(String name) {
    if (savedProviders.contains(name)) {
      savedProviders.remove(name);
    } else {
      savedProviders.add(name);
    }
  }

  void onSearchChanged(String value) {
    searchQuery.value = value;
  }

  void clearSearch() {
    searchController.clear();
    searchQuery.value = '';
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
