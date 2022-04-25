import 'package:get/get.dart';

class AuthController extends GetxController{

  final RxBool _isObscure = false.obs;
  bool get isObscure => _isObscure.value;
  set isObscure(bool value) => _isObscure.value = value;

  void obscureText () {
    isObscure = !isObscure;
    print(isObscure);
  }

}