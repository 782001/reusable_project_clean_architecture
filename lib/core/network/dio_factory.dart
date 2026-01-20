import 'package:dio/dio.dart';
import 'package:pharmacy/core/network/api_constance.dart';
import 'package:pharmacy/core/storage/cashhelper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final CashHelper cashHelper;

  DioFactory(this.cashHelper);

  Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstance.baseUrl,
        connectTimeout: const Duration(seconds: ApiConstance.connectTimeout),
        receiveTimeout: const Duration(seconds: ApiConstance.receiveTimeout),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    // 🌍 Language interceptor
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final lang = cashHelper.getData(key: 'lang') ?? 'en';
          options.headers['Accept-Language'] = lang;

          final token = ApiConstance.userToken;
          options.headers['Authorization'] = 'Bearer $token';

          return handler.next(options);
        },
      ),
    );

    // 🐛 Logger
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),
    );

    return dio;
  }
}
