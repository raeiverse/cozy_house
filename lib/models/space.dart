class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String mapUrl;
  String phone;
  List photos;
  int numberOfKitchen;
  int numberOfBedroom;
  int numberOfLemari;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.country,
    this.rating = 0,
    required this.address,
    required this.mapUrl,
    required this.phone,
    required this.photos,
    required this.numberOfKitchen,
    required this.numberOfBedroom,
    required this.numberOfLemari,
  });

  // Space.fromJson(json) {
  //   id = json['id'];
  //   name = json['name'];
  //   city = json['city'];
  //   country = json['country'];
  //   imageUrl = json['image_url'];
  //   price = json['price'];
  //   rating = json['rating'];
  //   address = json['address'];
  //   phone = json['phone'];
  //   mapUrl = json['map_url'];
  //   photos = json['photos'];
  //   numberOfKitchen = json['number_of_kitchens'];
  //   numberOfBedroom = json['number_of_bedrooms'];
  //   numberOfLemari = json['number_of_cupboards'];
  // }

  Space.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        city = json['city'],
        country = json['country'],
        imageUrl = json['image_url'],
        price = json['price'],
        rating = json['rating'],
        address = json['address'],
        phone = json['phone'],
        mapUrl = json['map_url'],
        photos = json['photos'],
        numberOfKitchen = json['number_of_kitchens'],
        numberOfBedroom = json['number_of_bedrooms'],
        numberOfLemari = json['number_of_cupboards'];
}
