import 'dart:convert';

import 'package:api_call_1/Screen/Home/Model/HomeModel.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<HomeModel> Apihelper() async {
    String Link =
        "https://myct.store/Mobile_Services/user/v2/index.php/get_order/8";

    Uri uri = Uri.parse(Link);

    var result = await http.get(uri);

    var Json = jsonDecode(result.body);

    HomeModel homeModel = HomeModel.fromJson(Json);

    return homeModel;
  }
}
