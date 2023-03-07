import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_post/app/data/news_service.dart';
import 'package:getx_post/app/data/post_news_service.dart';

class PostArticleController extends GetxController {
  FocusNode nodeTwo = FocusNode();

  void reqFocus() {
    nodeTwo.requestFocus();
  }

  final postNewsService = PostNewsService();

  final postTitle = TextEditingController();
  final postDesc = TextEditingController();

  final isLoading = false.obs;

  Future<void> onSubmit() async {
    isLoading(true);
    try {
      final response =
          await postNewsService.postNews(title: postTitle.text, desc: postDesc.text);
      print(response);
      isLoading(false);
      Get.back();
    } catch (e) {
      isLoading(false);
    }
  }
}
