import 'package:dio/dio.dart';
import '../helpers/shared_prefs_helper.dart';
import '../shared/shared_pref_keys.dart';
import 'api_constants.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  static Dio? dio;
  static Dio createDio() {
    if (dio == null) {
      dio = Dio();

      dio!.options = BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 90),
        receiveTimeout: const Duration(seconds: 90),
        contentType: 'application/json',
      );

      setDioHeaders();

      return dio!;
    } else {
      return dio!;
    }
  }

  static Future<void> setDioHeaders() async {
    dio?.options.headers = {
      'Authorization':
          "Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.accessToken)}",
    };
    print('Token Added');
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': "Bearer $token",
    };
    print('Token Added After Login');
  }

  static Future<void> refreshToken() async {
    await dio
        ?.post(
      ApiConstants.baseUrl + ApiConstants.refreshTokenUrl,
      options: Options(
        headers: {
          'Authorization':
              "Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.refreshToken)}",
        },
      ),
    )
        .then((value) {
      print('Refresh');
      setTokenIntoHeaderAfterLogin(value.data['access_token']);
    }).catchError((error) {});
  }

  Future<dynamic> get({required String endPoint}) async {
    final response = await _dio.get(endPoint);
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    final response = await _dio.post(endPoint, data: data);
    return response.data;
  }
}
