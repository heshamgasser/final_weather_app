import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/layout/home.dart';
import 'package:weather_app/styles/app_theme.dart';
import 'package:weather_app/views/search_view.dart';

void main (){
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 870),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName:(context) => HomeScreen(),
            SearchScreen.routeName:(context) => SearchScreen(),

          },
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}
