import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_article_controller.dart';

class PostArticleView extends GetView<PostArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 20),
                child:
                    Icon(Icons.arrow_back_ios, size: 26, color: Colors.black),
              )),
          title: Text(
            'Star News',
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                    focusNode: controller.nodeOne,
                    onSubmitted: (value) =>
                        FocusScope.of(context).requestFocus(controller.nodeTwo),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Content Article",
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                    maxLines: 10,
                    focusNode: controller.nodeTwo,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFD9D9D9),
                      ),
                      alignment: Alignment.center,
                      height: 55,
                      width: 300,
                      child: Text(
                        "Post",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 21),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
