class ProviderItem {
  final String name;
  final String rating;
  final String reviews;
  final String price;
  final String image;
  final bool isSaved;
  final String address;
  final String description;
  final String numberOfStaffs;
  final String overallRating;
  final String totalBookings;
  final List<String> servicesOffered;
  final String reviewRating;
  final String pricePerHour;

  const ProviderItem({
    required this.name,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.image,
    this.isSaved = false,
    required this.address,
    required this.description,
    required this.numberOfStaffs,
    required this.overallRating,
    required this.totalBookings,
    required this.servicesOffered,
    required this.reviewRating,
    required this.pricePerHour,
  });
}
