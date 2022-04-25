import 'package:client/app/modules/authentication/auth_binding.dart';
import 'package:client/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  AuthBinding().dependencies();
  runApp(GalleryHub());
}

class GalleryHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: "Gallery Hub",
      debugShowCheckedModeBanner: false,
      initialRoute: AppScreens.INITIAL,
      getPages: AppScreens.routes,
    );
  }
}

