import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:getx_post/app/modules/home/views/home_view.dart';
import 'package:getx_post/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/icon_splash.png'),
      title: Text("Star News"),
      loadingText: Text("Please Wait..."),
      durationInSeconds: 4,
      navigator: HomeView(),
    );
  }
}
