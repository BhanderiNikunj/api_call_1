import 'package:api_call_1/Screen/Home/Model/HomeModel.dart';
import 'package:api_call_1/Utiles/ApiHelper.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();

  Future<HomeModel> homeProvider() async {
    HomeModel? homeModel;
    homeModel = await apiHelper.Apihelper();

    return homeModel;
  }
}
