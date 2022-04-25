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
        child: NestedScrollView(
          controller: ScrollController(),
          physics: ClampingScrollPhysics(),
          headerSliverBuilder: (context, value){
            return [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.black87,
                flexibleSpace: FlexibleSpaceBar(
                  background:CarouselSlider(
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
                expandedHeight: 250,
                floating: true,
                bottom: TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  controller: controller.tabController,
                  tabs: [
                    Tab(child: Text("${controller.urls.length~/2} Photos"),),
                    Tab(child: Text("${controller.urls.length~/2} Photos"),)
                  ],
                ),
              ),
            ];
          },
            body: TabBarView(
              children: [
                  ListView.builder(
                      itemCount: controller.urls.length~/2,
                      itemBuilder: (BuildContext context, int index){
                        return ListTile(
                          title: Image(
                            image: NetworkImage(controller.urls[index]),
                          ),
                          onTap: () {
                            Get.to(PhotoScreen(url: controller.urls[index],));
                          },
                        );
                      }
                  ),
                  ListView.builder(
                    itemCount: controller.urls.length~/2,
                    itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        title: Image(
                          image: NetworkImage(controller.urls[index + 5]),
                        ),
                        onTap: () {
                          Get.to(PhotoScreen(url: controller.urls[index + 5],));
                        },
                      );
                    }
                ),
              ],
              controller: controller.tabController,

            ),
        ),
      ),
    );
  }
}
