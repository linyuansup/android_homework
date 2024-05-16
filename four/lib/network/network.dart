import 'package:dio/dio.dart';
import 'package:four/network/response.dart';

class Network {
  static final _httpClient = Dio(BaseOptions(
    baseUrl: 'http://192.168.1.103:4523/m1/4504389-4151494-default',
  ));

  static Future<GetCommentResponse> getComment() async {
    final response = await _httpClient.get('/comment');
    if (response.statusCode != 200) {
      throw Exception('Failed to get comment');
    }
    return GetCommentResponse.fromJson(response.data);
  }

  static Future<void> like(int id) async {
    final response = await _httpClient.post('/like', data: {'id': id});
    if (response.statusCode != 200) {
      throw Exception('Failed to like');
    }
  }
}
