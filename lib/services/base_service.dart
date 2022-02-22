import 'package:dio/dio.dart';
import 'package:vehicle_app/utils/dio/get_dio.dart';

class BaseService {
  Dio dio = GetDio.dio();
}
