class ItemInfoModel {
  final List images;
  final String location;
  final String additionalInfo;
  final String category;
  final int numOfRooms;
  final int numOfBathrooms;
  final int numOfKitchens;
  final double space;
  final int isForSale;
  final double price;
  final int isFavourite;

  ItemInfoModel(
      {required this.images,
      required this.location,
      required this.additionalInfo,
      required this.category,
      required this.numOfRooms,
      required this.numOfBathrooms,
      required this.numOfKitchens,
      required this.space,
      required this.isForSale,
      required this.price,
      required this.isFavourite});
}
