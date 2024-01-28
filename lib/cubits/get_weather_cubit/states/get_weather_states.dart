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
