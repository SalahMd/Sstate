import 'package:sestate/core/class/crud.dart';
import 'package:sestate/core/constants/links.dart';

class LogOutBack {
  Crud crud;
  LogOutBack(this.crud);
  postData(var token) async {
    var response = await crud
        .postWithHeaders(AppLinks.logOut,{},{'Authorization': 'Bearer $token'},false);
    return response.fold((l) => l, (r) => r);
  }
}
