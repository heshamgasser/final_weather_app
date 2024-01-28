// import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
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

  MaterialColor getWeatherColor({required String weatherCondition}) {
    if (weatherCondition == 'Sunny') {
      return Colors.orange;
    } else if (weatherCondition == 'Clear') {
      return Colors.orange;
    } else if (weatherCondition == 'Partly cloudy') {
      return Colors.grey;
    } else if (weatherCondition == 'Cloudy') {
      return Colors.grey;
    } else if (weatherCondition == 'Overcast') {
      return Colors.grey;
    } else if (weatherCondition == 'Mist') {
      return Colors.blueGrey;
    } else if (weatherCondition == 'Patchy rain possible') {
      return Colors.blueGrey;
    } else if (weatherCondition == 'Patchy snow possible') {
      return Colors.deepPurple;
    } else if (weatherCondition == 'Patchy sleet possible') {
      return Colors.deepPurple;
    } else if (weatherCondition == 'Patchy freezing drizzle possible') {
      return Colors.lightBlue;
    } else if (weatherCondition == 'Thundery outbreaks possible') {
      return Colors.grey;
    } else if (weatherCondition == 'Blowing snow') {
      return Colors.lime;
    } else if (weatherCondition == 'Blizzard') {
      return Colors.deepOrange;
    } else if (weatherCondition == 'Blizzard') {
      return Colors.deepOrange;
    } else {
      return Colors.blue;
    }
  }
}
