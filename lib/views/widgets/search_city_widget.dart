import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/layout/home.dart';
import 'package:weather_app/models/waether_data_model.dart';
import 'package:weather_app/shared/network/api_manager.dart';
import 'package:weather_app/views/waether_data_ui.dart';

class SearchCity extends StatelessWidget {
  // TextEditingController controller;
  String hintText;
  String labelText;


  SearchCity({
    // required this.controller,
    required this.hintText,
    required this.labelText,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      onFieldSubmitted: (value) async {

      },
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(color: Colors.black),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(50.r),
        //   borderSide: BorderSide(color: Colors.black),
        // ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(50.r),
        //   borderSide: BorderSide(color: Colors.black),
        // ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(color: Colors.red),
        ),
        prefixIcon: Icon(
          Icons.home_filled,
          color: Colors.black,
        ),
        suffixIcon: IconButton(
            onPressed: () async {
              // WeatherDataModel weatherDataModel =
              //     await ApiManager.getWeatherData(controller.text);
              // Navigator.pushReplacementNamed(context, HomeScreen.routeName,
              //     arguments: weatherDataModel);
            },
            icon: Icon(Icons.search)),
        hintText: hintText,
        labelText: labelText,
        hintStyle: Theme.of(context).textTheme.labelSmall,
        labelStyle: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
