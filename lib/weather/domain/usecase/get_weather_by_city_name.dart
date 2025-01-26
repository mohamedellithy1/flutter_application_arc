import 'package:flutter_application_test/weather/domain/entities/weather.dart';
import 'package:flutter_application_test/weather/domain/repository/base_weather_repositiory.dart';

class GetWeatherByCityName {
  final BaseWeatherRepositiory baseWeatherRepositiory;

  GetWeatherByCityName({required this.baseWeatherRepositiory});


  Future<Weather> execute(String cityName) async{
    return await baseWeatherRepositiory.getWeatherByCityName(cityName);

  }
}