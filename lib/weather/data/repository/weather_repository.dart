import 'package:flutter_application_test/weather/data/datasource/remote_datasource.dart';
import 'package:flutter_application_test/weather/domain/entities/weather.dart';
import 'package:flutter_application_test/weather/domain/repository/base_weather_repositiory.dart';

class WeatherRepository implements BaseWeatherRepositiory{
  BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository({required this.baseRemoteDataSource});
  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
   return await baseRemoteDataSource.getWeatherByCityName(cityName);
  }
}