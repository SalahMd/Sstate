class ItemModel {
  //image will be encrypted
  final image;
  final String location;
  final int isForSale;
  final int numOfRooms;
  final int numOfBathrooms;
  final int numOfKitchens;
  final double price;
ItemModel(this.numOfBathrooms, this.numOfKitchens, 
      {required this.image,
      required this.location,
      required this.numOfRooms,
      required this.isForSale,
      required this.price,
});
}
