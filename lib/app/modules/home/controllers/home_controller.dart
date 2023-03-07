import 'package:get/get.dart';
import 'package:getx_post/app/data/news_service.dart';
import 'package:getx_post/app/modules/home/models/home_model.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    getListNews();
  }

  Future<void> getListNews() async {
    isLoading(true);
    try {
      final response = await newsService.getNews();
      response.map((v) {
        print(v);
        final news = ListNewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }
}
