import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app/models/waether_data_model.dart';

import '../../const/api_const.dart';

class ApiManager {
  final Dio dio;

  ApiManager({required this.dio});

   Future<WeatherDataModel> getWeatherData(String cityName) async {
    // Dio dio = Dio();

    try {
      Response response = await dio.get(
        '$BASEURL$forecastEndpoint',
        queryParameters: {'key': APIKEY, 'q': cityName},
      );
      var json = jsonDecode(response.data);

      WeatherDataModel weatherModel = WeatherDataModel.fromJson(json);

      return weatherModel;
    } on DioException catch (error) {
      String errorMessage = error.response?.data['error']['message'] ??
          'There is an Error, Try Again Later';
      throw (errorMessage);
    } catch (e) {
      String error = e.toString();
      throw (error);
    }
  }

//   39
}
