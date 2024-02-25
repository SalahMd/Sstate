import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/services/services.dart';

abstract class AddPlaceController extends GetxController {
  addPlace();
}

class AddPlaceControllerImpl extends AddPlaceController {
  int numOfBedRooms = 0;
  int numOfLivingRooms = 0;
  int numOfKitchens = 0;
  int numOfBathRooms = 0;
  double space = 0;
  bool sale = true;
  int floor = 0;
  List images = [];

  List<DropdownMenuItem<String>> streetsList = [
    DropdownMenuItem<String>(
      value: '1',
      child: Text("Muhajjrin".tr),
    ),
    DropdownMenuItem<String>(
      value: '2',
      child: Text("Mezzeh".tr),
    ),
    DropdownMenuItem<String>(
      value: '3',
      child: Text("Jisr Alabyad".tr),
    ),
    DropdownMenuItem<String>(
      value: '4',
      child: Text("Abu Rmmaneh".tr),
    ),
    DropdownMenuItem<String>(
      value: '5',
      child: Text("Malki".tr),
    ),
    DropdownMenuItem<String>(
      value: '6',
      child: Text("Afif".tr),
    ),
  ];
  List<DropdownMenuItem<String>> placeTypesList = [
    DropdownMenuItem<String>(
      value: '1',
      child: Text("apartment        ".tr),
    ),
    DropdownMenuItem<String>(
      value: '2',
      child: Text("office     ".tr),
    ),
    DropdownMenuItem<String>(
      value: '3',
      child: Text("property    ".tr),
    ),
    DropdownMenuItem<String>(
      value: '4',
      child: Text("clincs    ".tr),
    ),
  ];
  String dropdownValue = '1';
  String typeValue = '1';
  late TextEditingController location;
  String placeLocation = '';
  String placeType = '';
  late TextEditingController price;
  late TextEditingController additionalInfo;
  Myservices myServices = Get.find();
  StatusRequest? statusRequest;
  //String location = "";
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  //AddMedicineBack addmedicineBack = AddMedicineBack(Get.put(Crud()));

  @override
  addPlace() {
    // TODO: implement addPlace
    throw UnimplementedError();
  }

  @override
  void onInit() {
    location = TextEditingController();
    price = TextEditingController();
    additionalInfo = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    location.dispose();
    price.dispose();
    additionalInfo.dispose();
    super.dispose();
  }
}
