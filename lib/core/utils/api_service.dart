import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> post({required body , required String url ,required String token,String? contenttype}) async {
    try {
      final response = await dio.post(url, data: body,options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
        contentType: contenttype
      ));
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
