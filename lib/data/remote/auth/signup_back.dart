import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/constants/links.dart';

class SignUpBack {
  Crud crud;
  SignUpBack(this.crud);
  postData(String firstName, String lastName,String email, String phone,String password,) async {
    var response = await crud.postData(AppLinks.signUp, {
      "first_name":firstName,
      "last_name":lastName,
      "email":email,
      "phone_number":phone,
      "password":password,
    },true);
    return response.fold((l) => l, (r) => r);
  }
}
