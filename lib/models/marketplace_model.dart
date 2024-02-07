class marketplacemodel {
  final String title;
  final String photo;
  final String price;

  marketplacemodel({
    required this.title,
    required this.photo,
    required this.price,
  });
}

List<marketplacemodel> marketplacedata = [
  marketplacemodel(
    title: 'iphone 12',
    photo: 'images/26.jpg',
    price: '67000',
  ),
  marketplacemodel(
    title: 'iphone 13',
    photo: 'images/27.jpg',
    price: '97000',
  ),
];
