import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/cubits/get_weather_cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/layout/home.dart';
import 'package:weather_app/shared/styles/app_theme.dart';
import 'package:weather_app/views/search_view.dart';
import 'bloc_observer/observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: ScreenUtilInit(
        designSize: Size(412, 870),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: HomeScreen.routeName,
            routes: {
              HomeScreen.routeName: (context) => HomeScreen(),
              SearchScreen.routeName: (context) => SearchScreen(),
            },
            themeMode: ThemeMode.system,
            theme: AppTheme.lightTheme,
          );
        },
      ),
    );
  }
}
