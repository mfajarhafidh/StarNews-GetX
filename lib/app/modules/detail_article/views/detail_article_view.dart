import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_article_controller.dart';

class DetailArticleView extends GetView<DetailArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Text(
          'Detail Article',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 5,
                offset: Offset(0.0, 0.75)
              )
              ]),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Obx(
          () => ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(controller.detailNews.value.title ?? '', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          subtitle: Text(controller.detailNews.value.body ?? '', style: TextStyle(color: Colors.black, fontSize: 16)),
          )
          ),
      ),
    );
  }
}
