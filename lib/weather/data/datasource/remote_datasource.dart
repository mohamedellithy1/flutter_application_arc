import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_test/core/utils/constance.dart';
import 'package:flutter_application_test/weather/data/model/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCityName(String cityName);
}
class RemoteDatasource  implements BaseRemoteDataSource{
  @override
  Future<WeatherModel> getWeatherByCityName(String cityName)async {
    try{
      var response = await Dio().get('${Constance.baseUrl}/weather?q=$cityName&appid=${Constance.apiKey}');
      print(response.data);
      return WeatherModel.fromJson(response.data);
    }catch(e){
      throw e;
    }

  }

}