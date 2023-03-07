import 'package:get/get.dart';

class PostNewsService {
  final _connect = Get.find<GetConnect>();

  Future postNews({required String title, required String desc}) async {
    final response = await _connect.post(
      'posts',
      {
        'title': title,
        'body': desc,
        'userId': 11,
      },
    );
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}