import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/states/get_weather_states.dart';

import '../../../models/waether_data_model.dart';
import '../../../shared/network/api_manager.dart';

class GetWeatherCubit extends Cubit<GetWeatherStates>{

  GetWeatherCubit() : super(GetWeatherInitState());


  getWeatherData (String cityName) async{
   try {
      WeatherDataModel weatherDataModel =
          await ApiManager(dio: Dio()).getWeatherData(cityName);
      emit(GetWeatherSuccessState());
    } catch (e){
     emit(GetWeatherFailureState());
   }
  }








}