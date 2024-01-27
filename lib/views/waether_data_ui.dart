import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/models/waether_data_model.dart';

class WeatherDataUI extends StatelessWidget {
  WeatherDataModel weatherDataModel;

  WeatherDataUI(this.weatherDataModel);

  @override
  Widget build(BuildContext context) {
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
            'Updated At: ${weatherDataModel.last_updated?.substring(0, 10) ?? ''}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 50.h),
          Row(
            children: [
              Image.asset(
                'assets/images/day/${weatherDataModel.conditionIcon?.substring(0, 39) ?? ''}',
                fit: BoxFit.fill,
              ),
              Spacer(),
              Text(
                weatherDataModel.temp_c ?? '',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Max Temp: ${weatherDataModel.maxtemp_c ?? ''}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Min Temp: ${weatherDataModel.mintemp_c ?? ''}',
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
