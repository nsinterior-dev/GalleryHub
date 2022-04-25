import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/app/modules/dashboard/dashboard_controller.dart';
import 'package:client/app/modules/photo/photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class DashboardScreen extends GetWidget<DashboardController> {

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      drawer: Container(
        width: 150,
        child: Drawer(
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                child: Text('Gallery Hub'),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Text('Log out')
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors.black87,
              child: CarouselSlider(
                items: controller.urls.map((e){
                  return Builder(builder: (BuildContext context) {
                    return GestureDetector(
                      child: Image(
                        image: NetworkImage(e),
                      ),
                      onTap: () {
                        Get.to(PhotoScreen(url: e,));
                      },
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                  height: 300,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlay: true,
                  initialPage: 0,

                ),
                carouselController: buttonCarouselController,
              ),

              ),
          ],
        ),
      ),
    );
  }
}
