import 'package:get/get.dart';
import 'package:getx_post/app/data/news_service.dart';
import 'package:getx_post/app/modules/detail_article/models/detail_article_model.dart';

class DetailArticleController extends GetxController {
  
  RxBool isLoading = false.obs;
  String id = '';
  Rx<DetailNewsModel> detailNews = DetailNewsModel().obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    getDetailNews();
  }

  Future<void> getDetailNews() async {
    isLoading(true);
    try {
      final response = await newsService.getDetailNews(id: id);
      final res = DetailNewsModel.fromJson(response);
      detailNews(res);
    } catch (e) {
      isLoading(false);
      print(e);
      Get.snackbar('Error', e.toString());
    }
  }
}
