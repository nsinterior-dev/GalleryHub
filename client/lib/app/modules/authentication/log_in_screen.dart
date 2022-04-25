import 'package:client/app/modules/authentication/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthScreen extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Obx(
            () => ListView(
              children: [
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(labelText: 'Email Address'),
                  ),
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        suffix: IconButton(
                          onPressed: () {controller.obscureText();},
                          icon: Icon(controller.isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                    obscureText: controller.isObscure,
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                  color: Colors.blue,
                  margin: EdgeInsets.only(top: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
