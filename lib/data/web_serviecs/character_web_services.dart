import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_test/constants/strings.dart';

class CharacterWebServices {
  late Dio dio ;
  CharacterWebServices(){
    BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      baseUrl: baseUrl,
    );
    dio = Dio(options);
  }
  Future <List<dynamic>> fetchCharacters() async {
    try {
      Response response = await dio.get('character');
      if (kDebugMode) {
        print(response.data);
      }
      return response.data;
      
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }
}