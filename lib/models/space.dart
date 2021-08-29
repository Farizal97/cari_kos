class Space {
  late int id;
  late String name;
  late String imageUrl;
  late int price;
  late String city;
  late String country;
  late int rating;
  late final String address;
  late final String phone;
  late final String mapUrl;
  late final List photos;
  late final int numberOfKitchens;
  late final int numberOfBedrooms;
  late final int numberOfCupboards;

  Space(
      {required this.city,
      required this.country,
      required this.id,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.rating,
      required this.address,
      required this.mapUrl,
      required this.numberOfKitchens,
      required this.numberOfBedrooms,
      required this.numberOfCupboards,
      required this.phone,
      required this.photos});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}
