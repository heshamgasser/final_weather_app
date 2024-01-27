import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/models/waether_data_model.dart';
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
          IconButton(onPressed: () {
              Navigator.pushReplacementNamed(context, SearchScreen.routeName);
          }, icon: Icon(Icons.search),),
        ],

      ),
      body: NoWeatherData()
      // WeatherDataUI(args),
    );
  }
}
