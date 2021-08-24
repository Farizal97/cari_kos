class Space {
  late int id;
  late String name;
  late String imageUrl;
  late double price;
  late String city;
  late String country;
  late int rating;

  Space({
    required this.city,
    required this.country,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
  });
}
