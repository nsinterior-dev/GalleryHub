import 'package:client/app/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  final RxBool _isObscure = true.obs;
  bool get isObscure => _isObscure.value;
  set isObscure(bool value) => _isObscure.value = value;

  final RxString _hintText = ''.obs;
  String get hintText => _hintText.value;
  set hintText(String value) => _hintText.value = value;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void obscureText () {
    isObscure = !isObscure;
    print(isObscure);
  }

  void login(){
    if(emailController.text.isEmpty || passwordController.text.isEmpty){
      hintText = 'Text fields cannot be empty!';
    }
    else if(!emailController.text.contains('@') && !emailController.text.endsWith('.com')){
      Get.snackbar(
          'Invalid email format',
          'Make sure that your email contains "@" symbol',
          snackPosition: SnackPosition.BOTTOM
      );
    }
    else{
     Get.toNamed(Routes.DASHBOARD);
    }

  }


}