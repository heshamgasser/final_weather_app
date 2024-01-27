import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/states/get_weather_states.dart';

class GetWeatherCubit extends Cubit<GetWeatherStates>{

  GetWeatherCubit() : super(GetWeatherInitState());


}