class ItemModel {
  //image will be encrypted
  final image;
  final String location;
  final int isForSale;
  final int numOfRooms;
  final int numOfBathrooms;
  final int numOfKitchens;
  final double price;
  final double space;
  ItemModel(
    this.numOfBathrooms,
    this.numOfKitchens, this.space, {
    required this.image,
    required this.location,
    required this.numOfRooms,
    required this.isForSale,
    required this.price,
  });
}
