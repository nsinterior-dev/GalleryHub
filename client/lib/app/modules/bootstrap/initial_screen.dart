import 'package:client/app/modules/authentication/controllers/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class InitialScreen extends GetWidget<InitialController>{
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }
}
