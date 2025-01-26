import 'package:flutter/material.dart';
import 'package:flutter_application_test/weather/data/datasource/remote_datasource.dart';
import 'package:flutter_application_test/weather/data/repository/weather_repository.dart';
import 'package:flutter_application_test/weather/domain/repository/base_weather_repositiory.dart';
import 'package:flutter_application_test/weather/domain/usecase/get_weather_by_city_name.dart';

main()async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDatasource();
  BaseWeatherRepositiory baseWeatherRepositiory = WeatherRepository( baseRemoteDataSource: baseRemoteDataSource );
  GetWeatherByCityName( baseWeatherRepositiory:baseWeatherRepositiory ).execute('cairo');
runApp(  const NewsApp());  
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'News App',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(), 
    );
  }
}