
import 'dart:convert';
import 'package:client/app/modules/authentication/auth_controller.dart';
import 'package:client/app/modules/authentication/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


const unsplashApi = 'https://api.unsplash.com/photos/?client_id=';
const accessKey = 'StyCIkU-bFe6PORFy7vAdxD0oFYgwi2tTidFOd_NZvI';
const secretKey = '06IjBLNE9ALVpMA2c4qisJHxgM7jpwoVHKYXb37V8ks';

class DashboardController extends GetxController with GetSingleTickerProviderStateMixin{
  AuthController authController = Get.find<AuthController>();

  late RxList data = [].obs;
  late List<String> urls = [];

  late TabController tabController;

  @override
  void onInit() {
    // TODO: implement onInit
    tabController = TabController(length: 2, vsync: this);
    fetchData();
    super.onInit();
  }

  void fetchData() async{
     http.Response response = await http.get(Uri.parse('https://api.unsplash.com/photos/?client_id=$accessKey'));
     data.value = json.decode(response.body);
     assignData();
  }

  void assignData() {
    for(var i = 0; i < data.length; i++){
      urls.add(data.elementAt(i)["urls"]["regular"]);
    }

  }

}