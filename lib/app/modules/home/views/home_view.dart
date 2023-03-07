import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_post/app/modules/home/widgets/list_news_widget.dart';
import 'package:getx_post/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'StarNews',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                ...controller.listNews.reversed.map(
                  (item) => ListNews(
                    title: item.title,
                    description: item.body,
                    id: item.id.toString(),
                  ),
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.POST_ARTICLE),
        backgroundColor: Color(0xFFD9D9D9),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
