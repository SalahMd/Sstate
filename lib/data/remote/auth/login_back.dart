import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/constants/links.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postData(String phone, String password) async {
    var response = await crud.postData(AppLinks.logIn, {
      "email":phone,
      "password":password,
    },true);
    return response.fold((l) => l, (r) => r);
  }
}
