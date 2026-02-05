import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  ApiClient(this._dio) {
    _dio.options.baseUrl = 'https://api.hellobebe.ai/v1'; // Dummy URL
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException e) {
    // Basic error handling wrapper
    return Exception(e.message ?? 'Unknown API Error');
  }
}
