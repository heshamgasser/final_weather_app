import 'package:weather_app/models/current_weather_model.dart';
import 'package:weather_app/models/waether_data_model.dart';

abstract class GetWeatherStates {}

class GetWeatherInitState extends GetWeatherStates {}

class GetWeatherLoadingState extends GetWeatherStates {}

class GetWeatherSuccessState extends GetWeatherStates {}

// class GetCurrentWeatherSuccessState extends GetWeatherStates {
//   CurrentWeatherModel currentWeatherModel;
//
//   GetCurrentWeatherSuccessState();
// }

class GetWeatherFailureState extends GetWeatherStates {
  String error;

  GetWeatherFailureState(this.error);
}
