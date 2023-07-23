class FurnitureModel {
  final String imagePath;
  final String productName;
  final String productDetails;
  final String discountPrize;
  final String price;
  final String rating;
  bool isFavourite;

  FurnitureModel(
      {required this.imagePath,
      required this.productName,
      required this.productDetails,
      required this.discountPrize,
      required this.price,
      required this.rating,
      this.isFavourite = false});
}
