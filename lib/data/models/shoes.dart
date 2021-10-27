class Shoes {
  final String model;
  final double oldPrice;
  final double currentPrice;
  final List<String> images;
  final int modelNumber;
  final int color;

  Shoes(
      {required this.model,
      required this.oldPrice,
      required this.currentPrice,
      required this.images,
      required this.modelNumber,
      required this.color});
}

final nikeShoes = <Shoes>[
  Shoes(
    model: 'AIR MAX 90 EZ BLACK',
    oldPrice: 149,
    currentPrice: 199,
    images: [
      'assets/images/shoes1_1.png',
      'assets/images/shoes1_2.png',
      'assets/images/shoes1_3.png'
    ],
    modelNumber: 90,
    color: 0XFFF5F4F6
  ),

  Shoes(
    model: 'AIR MAX 95 RED',
    oldPrice: 349,
    currentPrice: 299,
    images: [
      'assets/images/shoes2_1.png',
      'assets/images/shoes2_2.png',
      'assets/images/shoes2_3.png'
    ],
    modelNumber: 95,
    color: 0XFFfff5eb
  ),

  Shoes(
    model: 'AIR MAX 270 GOLD',
    oldPrice: 260,
    currentPrice: 150,
    images: [
      'assets/images/shoes3_1.png',
      'assets/images/shoes3_2.png',
      'assets/images/shoes3_3.png'
    ],
    modelNumber: 270,
    color: 0XFFffecee
  ),

  Shoes(
    model: 'AIR MAX 98 FREE',
    oldPrice: 410,
    currentPrice: 250,
    images: [
      'assets/images/shoes4_1.png',
      'assets/images/shoes4_2.png',
      'assets/images/shoes4_3.png'
    ],
    modelNumber: 98,
    color: 0XFFF5F4F6
  ),
];
