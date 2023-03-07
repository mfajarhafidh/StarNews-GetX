import 'package:get/get.dart';

class DetailNewsService{
  final _connect = Get.find<GetConnect>();

  Future getDetailNews({required String id}) async {
    final response = await _connect.get('posts/$id');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}