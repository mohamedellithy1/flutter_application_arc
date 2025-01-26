import 'package:flutter_application_test/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepositiory {
// مستني ال weather اللي جاي من ال entity 
  Future<Weather> getWeatherByCityName(String cityName);



}