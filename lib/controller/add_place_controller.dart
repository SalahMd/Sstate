import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sestate/core/class/statusrequest.dart';
import 'package:sestate/core/functions/alerts.dart';
import 'package:sestate/core/services/services.dart';

abstract class AddPlaceController extends GetxController {
  addPlace();
  increaseCount(String increasingElement);
  decreaseCount(String increasingElement);
  pickImage();
}

class AddPlaceControllerImpl extends AddPlaceController {
  int numOfRooms = 0;
  int numOfKitchens = 0;
  int numOfBathRooms = 0;
  int rentalTerm = 0;
  double space = 0;
  bool sale = false;
  double containerPadding = 105.w;
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
  List<DropdownMenuItem<String>> rentOrSaleList = [
    DropdownMenuItem<String>(
      value: '1',
      child: Text("rent".tr),
    ),
    DropdownMenuItem<String>(
      value: '2',
      child: Text("sale".tr),
    ),
  ];
  //var pickedImage;
  String streetValue = '1';
  String typeValue = '1';
  late TextEditingController price;
  late TextEditingController additionalInfo;
  Myservices myServices = Get.find();
  StatusRequest? statusRequest;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  addPlace() {}

  updateDropDownValue(String? newValue, String changingElement) {
    if (changingElement == "location") {
      streetValue = newValue!;
    } else if (changingElement == "placetype") {
      typeValue = newValue!;
    }
    update();
  }

  @override
  void onInit() {
    price = TextEditingController();
    additionalInfo = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    price.dispose();
    additionalInfo.dispose();
    super.dispose();
  }

  Future<void> pickImage() async {
    if (images.length < 10) {
      final picker = ImagePicker();
      XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        print(pickedImage.path);
        images.add(File(pickedImage.path));
      } else {
        print("Image picking canceled");
      }
    } else {
      await alert("can'taddimages".tr);
    }
    update();
  }

  @override
  decreaseCount(String increasingElement) {
    if (increasingElement == "bathrooms" && numOfBathRooms > 0) {
      numOfBathRooms--;
    } else if (increasingElement == "kitchens" && numOfKitchens > 0) {
      numOfKitchens--;
    } else if (increasingElement == "rooms" && numOfRooms > 0) {
      numOfRooms--;
    } else if (increasingElement == "rentalterm" && rentalTerm > 0) {
      rentalTerm--;
    }
    update();
  }

  @override
  increaseCount(String increasingElement) {
    if (increasingElement == "bathrooms" && numOfBathRooms >= 0) {
      numOfBathRooms++;
    } else if (increasingElement == "kitchens" && numOfKitchens >= 0) {
      numOfKitchens++;
    } else if (increasingElement == "rooms" && numOfRooms >= 0) {
      numOfRooms++;
    } else if (increasingElement == "rentalterm" && rentalTerm >= 0) {
      rentalTerm++;
    }
    update();
  }

  isSale(bool isSale) {
    sale = isSale;
    if (sale)
      containerPadding = 25.w;
    else
      containerPadding = 105.w;
    update();
  }
}
