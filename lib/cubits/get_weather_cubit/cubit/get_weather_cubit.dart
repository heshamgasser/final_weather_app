// import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:weather_app/const/api_const.dart';
import 'package:weather_app/cubits/get_weather_cubit/states/get_weather_states.dart';

import '../../../models/waether_data_model.dart';

class GetWeatherCubit extends Cubit<GetWeatherStates> {
  GetWeatherCubit() : super(GetWeatherInitState());

  late WeatherDataModel weatherDataModel;

  // getWeatherData(String cityName) async {
  //   try {
  //     emit(GetWeatherLoadingState());
  //     WeatherDataModel weatherDataModel =
  //         await ApiManager(dio: Dio()).getWeatherData(cityName);
  //     emit(GetWeatherSuccessState(weatherDataModel: weatherDataModel));
  //   } catch (e) {
  //     emit(GetWeatherFailureState(e.toString()));
  //   }
  // }

// getCurrentWeatherData(String cityName) async {
//   try {
//     emit(GetWeatherLoadingState());
//     CurrentWeatherModel currentWeatherModel =
//         await ApiManager(dio: Dio()).getCurrentWeatherData(cityName);
//     emit(GetCurrentWeatherSuccessState(
//         currentWeatherModel: currentWeatherModel));
//   } catch (e) {
//     emit(GetWeatherFailureState(e.toString()));
//   }
// }

  Future<void> getWeatherData(String cityName) async {
    try {
      emit(GetWeatherLoadingState());
      Uri url = Uri.https(
        BASEURL,
        forecastEndpoint,
        {'key': APIKEY, 'q': cityName},
      );
      Response response = await http.get(url);
      var json = jsonDecode(response.body);

      weatherDataModel = WeatherDataModel.fromJson(json);
      emit(GetWeatherSuccessState());
    } catch (error) {
      emit(GetWeatherFailureState(error.toString()));
    }
  }
}
