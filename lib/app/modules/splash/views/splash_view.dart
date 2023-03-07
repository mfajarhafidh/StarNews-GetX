import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_post/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/icon_splash.png'),
      title: Text("Star News", style: TextStyle(fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),),
      loadingText: Text("Please Wait..."),
      durationInSeconds: 4,
      navigator: Routes.HOME,
    );
  }
}
