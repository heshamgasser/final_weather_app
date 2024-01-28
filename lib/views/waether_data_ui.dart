import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/cubits/get_weather_cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/models/waether_data_model.dart';

import '../const/api_const.dart';

class WeatherDataUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<GetWeatherCubit>(context);

    WeatherDataModel? weatherDataModel = bloc.weatherDataModel;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherDataModel.name ?? '',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          Text(
            'Updated At: ${weatherDataModel.last_updated?.substring(0, 10)}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 50.h),
          Row(
            children: [
              SizedBox(
                width: 100.w,
                height: 100.h,
                child: Image.network(
                  'http:${weatherDataModel.conditionIcon}',
                  fit: BoxFit.fill,
                ),
              ),
              Spacer(),
              Text(
                weatherDataModel.temp_c.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "Max Temp: ${weatherDataModel.maxtemp_c}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Min Temp: ${weatherDataModel.mintemp_c}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Text(
            weatherDataModel.conditionText ?? '',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
