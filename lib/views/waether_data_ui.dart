import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherDataUI extends StatelessWidget {
  const WeatherDataUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cairo', style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: 10.h),
          Text('Updated At: 23 : 46', style: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 50.h),
          Row(children: [
            Image.asset('assets/images/day/113.png', fit: BoxFit.fill,),
            Spacer(),
            Text('30', style: Theme.of(context).textTheme.bodyLarge,),
            Spacer(),
            Column(
              children: [
                Text('Max Temp: 35', style: Theme.of(context).textTheme.bodySmall,),
                SizedBox(height: 10.h),
                Text('Min Temp: 18', style: Theme.of(context).textTheme.bodySmall,),
              ],
            ),

          ],),
          SizedBox(height: 50.h),
          Text('Sunny', style: Theme.of(context).textTheme.bodyLarge,),
        ],
      ),
    );
  }
}
