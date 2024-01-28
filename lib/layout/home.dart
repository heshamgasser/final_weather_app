import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/states/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/views/waether_data_ui.dart';
import 'package:weather_app/views/widgets/no_weathe_data.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    // var args = ModalRoute.of(context)!.settings.arguments as WeatherDataModel;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SearchScreen.routeName);
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, GetWeatherStates>(
          builder: (context, state) {
            if (state is GetWeatherInitState) {
              return NoWeatherData();
            } else if (state is GetWeatherLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetWeatherSuccessState) {
              return WeatherDataUI();
            } else if (state is GetWeatherFailureState) {
              return Center(
                child: Text(
                  state.error,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              );
            } else {
              return Text('There is an Error');
            }
          },
        )
        // WeatherDataUI(args),
        );
  }
}
