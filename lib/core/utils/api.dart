import 'package:dio/dio.dart';

class Api {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  Dio dio;

  Api(this.dio);

  Future<Map<String, dynamic>> getData({required String endPoints}) async {
    var response = await dio.get(baseUrl + endPoints);
    return response.data;
  }
}
