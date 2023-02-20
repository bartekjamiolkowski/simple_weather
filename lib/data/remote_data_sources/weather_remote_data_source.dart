import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=2f80095a8b404b7097d180001232002&q=$city&aqi=no');
    return response.data;
  }
}
