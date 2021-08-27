class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Adana Hotel',
    address: 'Ilirska 21',
    price: 185,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Duja Hotel Bodrum',
    address: 'Zmaja od Bosne bb',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel Hills',
    address: 'Ferhadija 40',
    price: 240,
  ),
];
