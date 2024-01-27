import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/views/waether_data_ui.dart';
import 'package:weather_app/views/widgets/no_weathe_data.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
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
      body: WeatherDataUI(),
    );
  }
}
