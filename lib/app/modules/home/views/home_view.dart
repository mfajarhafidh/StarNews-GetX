import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_post/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  //bcz using the easy splash screen and cant use the get method, so i prefer the Get.put() right here
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, 
          icon: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(Icons.arrow_back_ios, size: 26, color: Colors.black),
          )
          ),
        title: Text(
          'StarNews',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26
          ),
          ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListView.builder(
          itemCount: homeController.titles.length, //<< fill with controller listener
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                shadowColor: Colors.black,
                color: Color(0xFFD9D9D9),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 19, top: 26, bottom: 16, right: 19),
                  onTap: (){
                    Get.toNamed(Routes.DETAIL_ARTICLE);
                  },
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(homeController.titles[index], 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  subtitle: Text(homeController.subtitles[index],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),),
                ),
              ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(Routes.POST_ARTICLE);
        },
        child: Icon(Icons.add),
        // backgroundColor: Color(0xFFD9D9D9),
        backgroundColor: Colors.red,
        ),
    );
  }
}
