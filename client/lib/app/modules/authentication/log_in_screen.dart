import 'package:client/app/modules/authentication/auth_controller.dart';
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
                    controller: controller.emailController,
                    decoration: InputDecoration(
                        labelText: 'Email Address',
                        hintText: controller.hintText,
                    ),

                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                        hintText: controller.hintText,
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
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      controller.login();
                    },
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
